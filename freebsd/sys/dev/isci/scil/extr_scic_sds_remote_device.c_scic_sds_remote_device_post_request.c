
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U32 ;
typedef int SCIC_SDS_REMOTE_DEVICE_T ;


 int scic_sds_controller_post_request (int ,int ) ;
 int scic_sds_remote_device_build_command_context (int *,int ) ;
 int scic_sds_remote_device_get_controller (int *) ;

void scic_sds_remote_device_post_request(
   SCIC_SDS_REMOTE_DEVICE_T * this_device,
   U32 request
)
{
   U32 context;

   context = scic_sds_remote_device_build_command_context(this_device, request);

   scic_sds_controller_post_request(
      scic_sds_remote_device_get_controller(this_device),
      context
   );
}
