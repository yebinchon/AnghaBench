
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* state_handlers; } ;
struct TYPE_7__ {int (* remote_device_stopped_handler ) (TYPE_2__*,int *) ;} ;
typedef int SCIC_SDS_REMOTE_DEVICE_T ;
typedef TYPE_2__ SCIC_SDS_CONTROLLER_T ;


 int SCIC_LOG_INFO (int ) ;
 int SCIC_LOG_OBJECT_CONTROLLER ;
 int sci_base_object_get_logger (TYPE_2__*) ;
 int sci_base_state_machine_get_state (int ) ;
 int scic_sds_controller_get_base_state_machine (TYPE_2__*) ;
 int stub1 (TYPE_2__*,int *) ;

void scic_sds_controller_remote_device_stopped(
   SCIC_SDS_CONTROLLER_T * this_controller,
   SCIC_SDS_REMOTE_DEVICE_T * the_device
)
{
   if (this_controller->state_handlers->remote_device_stopped_handler != ((void*)0))
   {
      this_controller->state_handlers->remote_device_stopped_handler(
         this_controller, the_device
      );
   }
   else
   {
      SCIC_LOG_INFO((
         sci_base_object_get_logger(this_controller),
         SCIC_LOG_OBJECT_CONTROLLER,
         "SCIC Controller 0x%x remote device stopped event from device 0x%x in unexpected state %d\n",
         this_controller,
         the_device,
         sci_base_state_machine_get_state(
            scic_sds_controller_get_base_state_machine(this_controller))
      ));
   }
}
