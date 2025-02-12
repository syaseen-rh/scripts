#!/bin/zsh
echo -n "Enter 1 for self-managed \n
Enter 2 for cloud-service \n"
read option
if [[ $option == 1 ]]
then
echo "You selected self-managed\n. Generating inventory for self-managed guides.."
elif [[ $option == 2 ]]
then
echo "You selected cloud-service\n. Generating inventory for cloud-service guides"
else
echo "Not a valid option"
fi
case $option in
        1)
		for i in configuring_the_model_registry_component getting_started_with_red_hat_openshift_ai_self-managed installing_and_uninstalling_openshift_ai_self-managed installing_and_uninstalling_openshift_ai_self-managed_in_a_disconnected_environment introduction_to_red_hat_openshift_ai managing_model_registries managing_openshift_ai managing_resources monitoring_data_science_models openshift_ai_tutorial_-_fraud_detection_example release_notes serving_models upgrading_openshift_ai_self-managed upgrading_openshift_ai_self-managed_in_a_disconnected_environment working_in_your_data_science_ide working_on_data_science_projects working_with_accelerators working_with_connected_applications working_with_data_in_an_s3-compatible_object_store working_with_data_science_pipelines working_with_distributed_workloads working_with_model_registries
		do
		echo "==============="
		echo $i
		echo "==============="
		curl -s https://docs.redhat.com/en/documentation/red_hat_openshift_ai_self-managed/2-latest/html/$i/index| grep -o 'href="[^"]*"' | grep "/en/documentation/"|sed 's/href="//g' | sed 's/"//g' | sort -u|grep "/en/documentation"|sed 's/\/en\/documentation/https:\/\/docs.redhat.com\/en\/documentation/g'
		done

        ;;

        2)
		for i in configuring_the_model_registry_component getting_started_with_red_hat_openshift_ai_cloud_service installing_and_uninstalling_openshift_ai_cloud_service introduction_to_red_hat_openshift_ai_cloud_service managing_model_registries managing_openshift_ai managing_resources managing_resources/usage-data-collection#usage-data-collection-notice-for-openshift-ai managing_users monitoring_data_science_models openshift_ai_tutorial_-_fraud_detection_example release_notes serving_models upgrading_openshift_ai_cloud_service working_in_your_data_science_ide working_on_data_science_projects working_with_accelerators working_with_connected_applications working_with_data_in_an_s3-compatible_object_store working_with_data_science_pipelines working_with_distributed_workloads working_with_model_registries
		do
                echo "==============="
                echo $i
                echo "==============="
                curl -s https://docs.redhat.com/en/documentation/red_hat_openshift_ai_cloud_service/1/html/$i/index| grep -o 'href="[^"]*"' | grep "/en/documentation/"|sed 's/href="//g' | sed 's/"//g' | sort -u|grep "/en/documentation"|sed 's/\/en\/documentation/https:\/\/docs.redhat.com\/en\/documentation/g'
                done
        ;;
esac
