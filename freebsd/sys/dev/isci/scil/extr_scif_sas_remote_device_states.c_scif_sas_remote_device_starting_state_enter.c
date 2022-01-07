
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ operation_status; TYPE_3__* domain; int parent; TYPE_2__* state_handlers; int core_object; int starting_substate_machine; int destination_state; } ;
struct TYPE_9__ {int controller; } ;
struct TYPE_7__ {int (* fail_handler ) (int *) ;} ;
struct TYPE_8__ {TYPE_1__ parent; } ;
typedef int SCI_BASE_OBJECT_T ;
typedef TYPE_4__ SCIF_SAS_REMOTE_DEVICE_T ;


 int SCIF_LOG_INFO (int ) ;
 int SCIF_LOG_OBJECT_REMOTE_DEVICE ;
 int SCIF_LOG_OBJECT_REMOTE_DEVICE_CONFIG ;
 int SCIF_SAS_REMOTE_DEVICE_CORE_OP_TIMEOUT ;
 int SCIF_SAS_REMOTE_DEVICE_DESTINATION_STATE_READY ;
 int SCI_BASE_REMOTE_DEVICE_STATE_STARTING ;
 int SCI_CONTROLLER_REMOTE_DEVICE_ERROR ;
 scalar_t__ SCI_SUCCESS ;
 int SET_STATE_HANDLER (TYPE_4__*,int ,int ) ;
 int sci_base_object_get_logger (TYPE_4__*) ;
 int sci_base_state_machine_start (int *) ;
 scalar_t__ scic_remote_device_start (int ,int ) ;
 int scif_cb_controller_error (int ,int ) ;
 int scif_sas_remote_device_state_handler_table ;
 int stub1 (int *) ;

__attribute__((used)) static
void scif_sas_remote_device_starting_state_enter(
   SCI_BASE_OBJECT_T *object
)
{
   SCIF_SAS_REMOTE_DEVICE_T * fw_device = (SCIF_SAS_REMOTE_DEVICE_T *)object;

   SET_STATE_HANDLER(
      fw_device,
      scif_sas_remote_device_state_handler_table,
      SCI_BASE_REMOTE_DEVICE_STATE_STARTING
   );

   SCIF_LOG_INFO((
      sci_base_object_get_logger(fw_device),
      SCIF_LOG_OBJECT_REMOTE_DEVICE | SCIF_LOG_OBJECT_REMOTE_DEVICE_CONFIG,
      "RemoteDevice:0x%x starting/configuring\n",
      fw_device
   ));

   fw_device->destination_state =
      SCIF_SAS_REMOTE_DEVICE_DESTINATION_STATE_READY;

   sci_base_state_machine_start(&fw_device->starting_substate_machine);

   fw_device->operation_status = scic_remote_device_start(
                                    fw_device->core_object,
                                    SCIF_SAS_REMOTE_DEVICE_CORE_OP_TIMEOUT
                                 );

   if (fw_device->operation_status != SCI_SUCCESS)
   {
      fw_device->state_handlers->parent.fail_handler(&fw_device->parent);



      scif_cb_controller_error(fw_device->domain->controller,
              SCI_CONTROLLER_REMOTE_DEVICE_ERROR);
   }
}
