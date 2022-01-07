
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_14__ {TYPE_1__* state_handlers; } ;
struct TYPE_12__ {int current_activity_phy_index; int current_smp_request; int current_activity; } ;
struct TYPE_11__ {TYPE_4__ smp_device; } ;
struct TYPE_13__ {int expander_phy_identifier; TYPE_3__ protocol_device; TYPE_2__* domain; } ;
struct TYPE_10__ {TYPE_6__* controller; } ;
struct TYPE_9__ {int (* start_high_priority_io_handler ) (int *,int *,int *,int ) ;} ;
typedef int SCI_BASE_REQUEST_T ;
typedef int SCI_BASE_REMOTE_DEVICE_T ;
typedef int SCI_BASE_CONTROLLER_T ;
typedef int SCIF_SAS_REQUEST_T ;
typedef TYPE_5__ SCIF_SAS_REMOTE_DEVICE_T ;
typedef TYPE_6__ SCIF_SAS_CONTROLLER_T ;


 int SCIF_SAS_SMP_REMOTE_DEVICE_ACTIVITY_TARGET_RESET ;
 int SCI_CONTROLLER_INVALID_IO_TAG ;
 int SMP_FUNCTION_PHY_CONTROL ;
 int stub1 (int *,int *,int *,int ) ;

void scif_sas_smp_remote_device_start_target_reset(
   SCIF_SAS_REMOTE_DEVICE_T * expander_device,
   SCIF_SAS_REMOTE_DEVICE_T * target_device,
   SCIF_SAS_REQUEST_T * fw_request
)
{
   SCIF_SAS_CONTROLLER_T * fw_controller = expander_device->domain->controller;


   expander_device->protocol_device.smp_device.current_activity =
      SCIF_SAS_SMP_REMOTE_DEVICE_ACTIVITY_TARGET_RESET;
   expander_device->protocol_device.smp_device.current_smp_request =
      SMP_FUNCTION_PHY_CONTROL;
   expander_device->protocol_device.smp_device.current_activity_phy_index =
      target_device->expander_phy_identifier;



   fw_controller->state_handlers->start_high_priority_io_handler(
      (SCI_BASE_CONTROLLER_T*) fw_controller,
      (SCI_BASE_REMOTE_DEVICE_T*) expander_device,
      (SCI_BASE_REQUEST_T*) fw_request,
      SCI_CONTROLLER_INVALID_IO_TAG
   );
}
