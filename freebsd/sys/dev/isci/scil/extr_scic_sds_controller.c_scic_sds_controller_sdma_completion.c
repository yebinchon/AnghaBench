
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t U32 ;
struct TYPE_5__ {int ** device_table; int ** io_request_table; } ;
typedef int SCIC_SDS_REQUEST_T ;
typedef int SCIC_SDS_REMOTE_DEVICE_T ;
typedef TYPE_1__ SCIC_SDS_CONTROLLER_T ;


 int SCIC_LOG_ERROR (int ) ;
 int SCIC_LOG_OBJECT_CONTROLLER ;
 int SCIC_LOG_OBJECT_SMP_IO_REQUEST ;
 int SCIC_LOG_OBJECT_SMP_REMOTE_TARGET ;
 int SCIC_LOG_OBJECT_SSP_IO_REQUEST ;
 int SCIC_LOG_OBJECT_SSP_REMOTE_TARGET ;
 int SCIC_LOG_OBJECT_STP_IO_REQUEST ;
 int SCIC_LOG_OBJECT_STP_REMOTE_TARGET ;
 int SCI_BASE_CONTROLLER_STATE_FAILED ;





 size_t SCU_GET_COMPLETION_INDEX (size_t) ;
 int sci_base_object_get_logger (TYPE_1__*) ;
 int sci_base_state_machine_change_state (int ,int ) ;
 int scic_sds_controller_get_base_state_machine (TYPE_1__*) ;
 int scu_get_command_request_type (size_t) ;

__attribute__((used)) static
void scic_sds_controller_sdma_completion(
   SCIC_SDS_CONTROLLER_T *this_controller,
   U32 completion_entry
)
{
   U32 index;
   SCIC_SDS_REQUEST_T *io_request;
   SCIC_SDS_REMOTE_DEVICE_T *device;

   index = SCU_GET_COMPLETION_INDEX(completion_entry);

   switch (scu_get_command_request_type(completion_entry))
   {
   case 128:
   case 131:
      io_request = this_controller->io_request_table[index];
      SCIC_LOG_ERROR((
         sci_base_object_get_logger(this_controller),
           SCIC_LOG_OBJECT_CONTROLLER
         | SCIC_LOG_OBJECT_SMP_IO_REQUEST
         | SCIC_LOG_OBJECT_SSP_IO_REQUEST
         | SCIC_LOG_OBJECT_STP_IO_REQUEST,
         "SCIC SDS Completion type SDMA %x for io request %x\n",
         completion_entry,
         io_request
      ));

      break;

   case 132:
   case 130:
   case 129:
      device = this_controller->device_table[index];
      SCIC_LOG_ERROR((
         sci_base_object_get_logger(this_controller),
           SCIC_LOG_OBJECT_CONTROLLER
         | SCIC_LOG_OBJECT_SSP_REMOTE_TARGET
         | SCIC_LOG_OBJECT_SMP_REMOTE_TARGET
         | SCIC_LOG_OBJECT_STP_REMOTE_TARGET,
         "SCIC SDS Completion type SDMA %x for remote device %x\n",
         completion_entry,
         device
      ));

      break;

   default:
      SCIC_LOG_ERROR((
         sci_base_object_get_logger(this_controller),
         SCIC_LOG_OBJECT_CONTROLLER,
         "SCIC SDS Completion unknown SDMA completion type %x\n",
         completion_entry
      ));
      break;
   }



   sci_base_state_machine_change_state(
      scic_sds_controller_get_base_state_machine(this_controller),
      SCI_BASE_CONTROLLER_STATE_FAILED
   );
}
