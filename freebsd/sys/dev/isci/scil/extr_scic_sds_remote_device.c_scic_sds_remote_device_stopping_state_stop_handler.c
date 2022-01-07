
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SCI_STATUS ;
typedef int SCI_BASE_REMOTE_DEVICE_T ;
typedef int SCIC_SDS_REMOTE_DEVICE_T ;


 int scic_sds_remote_device_terminate_requests (int *) ;

__attribute__((used)) static
SCI_STATUS scic_sds_remote_device_stopping_state_stop_handler(
   SCI_BASE_REMOTE_DEVICE_T *device
)
{



   return scic_sds_remote_device_terminate_requests(
             (SCIC_SDS_REMOTE_DEVICE_T*)device);
}
