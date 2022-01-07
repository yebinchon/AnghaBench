
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int U32 ;
struct TYPE_6__ {int state_machine; } ;
struct TYPE_7__ {TYPE_1__ parent; } ;
typedef int SCI_STATUS ;
typedef TYPE_2__ SCIC_SDS_REMOTE_DEVICE_T ;


 int SCIC_LOG_OBJECT_SMP_REMOTE_TARGET ;
 int SCIC_LOG_OBJECT_SSP_REMOTE_TARGET ;
 int SCIC_LOG_OBJECT_STP_REMOTE_TARGET ;
 int SCIC_LOG_WARNING (int ) ;
 int SCI_FAILURE_INVALID_STATE ;
 int sci_base_object_get_logger (TYPE_2__*) ;
 int sci_base_state_machine_get_state (int *) ;
 int scic_sds_controller_release_frame (int ,int ) ;
 int scic_sds_remote_device_get_controller (TYPE_2__*) ;

SCI_STATUS scic_sds_remote_device_default_frame_handler(
   SCIC_SDS_REMOTE_DEVICE_T *this_device,
   U32 frame_index
)
{
   SCIC_LOG_WARNING((
      sci_base_object_get_logger(this_device),
      SCIC_LOG_OBJECT_SSP_REMOTE_TARGET |
      SCIC_LOG_OBJECT_SMP_REMOTE_TARGET |
      SCIC_LOG_OBJECT_STP_REMOTE_TARGET,
      "SCIC Remote Device requested to handle frame %x while in wrong state %d\n",
      frame_index,
      sci_base_state_machine_get_state(&this_device->parent.state_machine)
   ));


   scic_sds_controller_release_frame(
      scic_sds_remote_device_get_controller(this_device), frame_index
   );

   return SCI_FAILURE_INVALID_STATE;
}
