
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int U32 ;
struct TYPE_6__ {int ready_substate_machine; int not_ready_reason; } ;
typedef int SCI_STATUS ;
typedef TYPE_1__ SCIC_SDS_REMOTE_DEVICE_T ;


 int SCIC_LOG_INFO (int ) ;
 int SCIC_LOG_OBJECT_STP_REMOTE_TARGET ;
 int SCIC_LOG_WARNING (int ) ;
 int SCIC_REMOTE_DEVICE_NOT_READY_SATA_SDB_ERROR_FIS_RECEIVED ;
 int SCIC_SDS_STP_REMOTE_DEVICE_READY_SUBSTATE_NCQ_ERROR ;
 int SCI_FAILURE_INVALID_STATE ;
 int sci_base_object_get_logger (TYPE_1__*) ;
 int sci_base_state_machine_change_state (int *,int ) ;
 int sci_base_state_machine_get_state (int *) ;
 int scic_sds_remote_device_general_event_handler (TYPE_1__*,int ) ;
 int scic_sds_remote_device_resume (TYPE_1__*) ;
 int scu_get_event_code (int ) ;

__attribute__((used)) static
SCI_STATUS scic_sds_stp_remote_device_ready_ncq_substate_event_handler(
   SCIC_SDS_REMOTE_DEVICE_T * this_device,
   U32 event_code
)
{
   SCI_STATUS status;

   status = scic_sds_remote_device_general_event_handler(this_device, event_code);

   switch (scu_get_event_code(event_code))
   {
   case 134:
   case 129:


      break;

   case 133:
   case 131:
   case 132:
   case 130:
   case 128:
      this_device->not_ready_reason =
         SCIC_REMOTE_DEVICE_NOT_READY_SATA_SDB_ERROR_FIS_RECEIVED;

      sci_base_state_machine_change_state(
         &this_device->ready_substate_machine,
         SCIC_SDS_STP_REMOTE_DEVICE_READY_SUBSTATE_NCQ_ERROR
      );



      SCIC_LOG_WARNING((
         sci_base_object_get_logger(this_device),
         SCIC_LOG_OBJECT_STP_REMOTE_TARGET,
         "SCIC Remote device 0x%x received driver suspend event %x while in ncq ready substate %d\n",
         this_device, event_code, sci_base_state_machine_get_state(&this_device->ready_substate_machine)
      ));


      status = scic_sds_remote_device_resume(this_device);
      break;

   case 135:

      SCIC_LOG_INFO((
         sci_base_object_get_logger(this_device),
         SCIC_LOG_OBJECT_STP_REMOTE_TARGET,
         "SCIC Remote device 0x%x received driver release event %x while in the ready substate %d\n",
         this_device, event_code, sci_base_state_machine_get_state(&this_device->ready_substate_machine)
      ));
      break;

   default:

      SCIC_LOG_WARNING((
         sci_base_object_get_logger(this_device),
         SCIC_LOG_OBJECT_STP_REMOTE_TARGET,
         "SCIC Remote device 0x%x received driver unexpected event %x while in the ready substate %d\n",
         this_device, event_code, sci_base_state_machine_get_state(&this_device->ready_substate_machine)
      ));

      status = SCI_FAILURE_INVALID_STATE;
      break;
   }

   return status;
}
