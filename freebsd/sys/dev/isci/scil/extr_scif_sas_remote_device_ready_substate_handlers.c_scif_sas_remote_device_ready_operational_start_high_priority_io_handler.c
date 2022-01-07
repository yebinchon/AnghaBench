
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_9__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_17__ {scalar_t__ current_state_id; } ;
struct TYPE_11__ {int parent; TYPE_1__* state_handlers; } ;
struct TYPE_16__ {TYPE_2__ parent; } ;
struct TYPE_15__ {int request_count; TYPE_9__ ready_substate_machine; int core_object; } ;
struct TYPE_13__ {scalar_t__ attached_smp_target; } ;
struct TYPE_12__ {TYPE_4__ bits; } ;
struct TYPE_14__ {TYPE_3__ u; } ;
struct TYPE_10__ {int (* start_handler ) (int *) ;} ;
typedef TYPE_5__ SMP_DISCOVER_RESPONSE_PROTOCOLS_T ;
typedef int SCI_STATUS ;
typedef int SCI_BASE_REQUEST_T ;
typedef int SCI_BASE_REMOTE_DEVICE_T ;
typedef TYPE_6__ SCIF_SAS_REMOTE_DEVICE_T ;
typedef TYPE_7__ SCIF_SAS_IO_REQUEST_T ;


 scalar_t__ SCIF_SAS_REMOTE_DEVICE_READY_SUBSTATE_TASK_MGMT ;
 int sci_base_state_machine_change_state (TYPE_9__*,scalar_t__) ;
 int scic_remote_device_get_protocols (int ,TYPE_5__*) ;
 int stub1 (int *) ;

__attribute__((used)) static
SCI_STATUS scif_sas_remote_device_ready_operational_start_high_priority_io_handler(
   SCI_BASE_REMOTE_DEVICE_T * remote_device,
   SCI_BASE_REQUEST_T * io_request
)
{
   SCIF_SAS_REMOTE_DEVICE_T * fw_device = (SCIF_SAS_REMOTE_DEVICE_T*)
                                          remote_device;
   SCIF_SAS_IO_REQUEST_T * fw_io = (SCIF_SAS_IO_REQUEST_T*) io_request;

   SMP_DISCOVER_RESPONSE_PROTOCOLS_T dev_protocols;

   scic_remote_device_get_protocols(fw_device->core_object, &dev_protocols);

   if (dev_protocols.u.bits.attached_smp_target)
   {

      if (fw_device->ready_substate_machine.current_state_id
       != SCIF_SAS_REMOTE_DEVICE_READY_SUBSTATE_TASK_MGMT)
      {
         sci_base_state_machine_change_state(
            &fw_device->ready_substate_machine,
            SCIF_SAS_REMOTE_DEVICE_READY_SUBSTATE_TASK_MGMT
         );
      }
   }

   fw_device->request_count++;

   return fw_io->parent.state_handlers->start_handler(&fw_io->parent.parent);
}
