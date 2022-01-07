
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t U32 ;
struct TYPE_6__ {int error; } ;
struct TYPE_7__ {size_t remote_node_entries; int ** device_table; int * phy_table; int ** io_request_table; TYPE_1__ parent; } ;
typedef int SCIC_SDS_REQUEST_T ;
typedef int SCIC_SDS_REMOTE_DEVICE_T ;
typedef int SCIC_SDS_PHY_T ;
typedef TYPE_2__ SCIC_SDS_CONTROLLER_T ;


 int SCIC_LOG_ERROR (int ) ;
 int SCIC_LOG_OBJECT_CONTROLLER ;
 int SCIC_LOG_OBJECT_SMP_IO_REQUEST ;
 int SCIC_LOG_OBJECT_SMP_REMOTE_TARGET ;
 int SCIC_LOG_OBJECT_SSP_IO_REQUEST ;
 int SCIC_LOG_OBJECT_SSP_REMOTE_TARGET ;
 int SCIC_LOG_OBJECT_STP_IO_REQUEST ;
 int SCIC_LOG_OBJECT_STP_REMOTE_TARGET ;
 int SCIC_LOG_WARNING (int ) ;
 int SCI_BASE_CONTROLLER_STATE_FAILED ;
 int SCI_CONTROLLER_FATAL_MEMORY_ERROR ;
 int * SCI_INVALID_HANDLE ;
 size_t SCU_GET_COMPLETION_INDEX (size_t) ;
 size_t SCU_GET_PROTOCOL_ENGINE_INDEX (size_t) ;
 int sci_base_object_get_logger (TYPE_2__*) ;
 int sci_base_state_machine_change_state (int ,int ) ;
 int scic_sds_controller_get_base_state_machine (TYPE_2__*) ;
 int scic_sds_io_request_event_handler (int *,size_t) ;
 int scic_sds_phy_event_handler (int *,size_t) ;
 int scic_sds_remote_device_event_handler (int *,size_t) ;
 int scu_get_event_specifier (size_t) ;
 int scu_get_event_type (size_t) ;

__attribute__((used)) static
void scic_sds_controller_event_completion(
   SCIC_SDS_CONTROLLER_T *this_controller,
   U32 completion_entry
)
{
   U32 index;
   SCIC_SDS_REQUEST_T *io_request;
   SCIC_SDS_REMOTE_DEVICE_T *device;
   SCIC_SDS_PHY_T *phy;

   index = SCU_GET_COMPLETION_INDEX(completion_entry);

   switch (scu_get_event_type(completion_entry))
   {
   case 131:

      SCIC_LOG_ERROR((
         sci_base_object_get_logger(this_controller),
         SCIC_LOG_OBJECT_CONTROLLER,
         "SCIC Controller 0x%x received SMU command error 0x%x\n",
         this_controller, completion_entry
      ));
      break;

   case 137:

       this_controller->parent.error = SCI_CONTROLLER_FATAL_MEMORY_ERROR;

       sci_base_state_machine_change_state(
          scic_sds_controller_get_base_state_machine(this_controller),
          SCI_BASE_CONTROLLER_STATE_FAILED
       );


   case 129:
   case 130:
      SCIC_LOG_ERROR((
         sci_base_object_get_logger(this_controller),
         SCIC_LOG_OBJECT_CONTROLLER,
         "SCIC Controller 0x%x received fatal controller event 0x%x\n",
         this_controller, completion_entry
      ));
      break;

   case 128:
      io_request = this_controller->io_request_table[index];
      scic_sds_io_request_event_handler(io_request, completion_entry);
      break;

   case 135:
      switch (scu_get_event_specifier(completion_entry))
      {
      case 141:
      case 140:
         io_request = this_controller->io_request_table[index];
         if (io_request != SCI_INVALID_HANDLE)
         {
            scic_sds_io_request_event_handler(io_request, completion_entry);
         }
         else
         {
            SCIC_LOG_WARNING((
               sci_base_object_get_logger(this_controller),
               SCIC_LOG_OBJECT_CONTROLLER |
               SCIC_LOG_OBJECT_SMP_IO_REQUEST |
               SCIC_LOG_OBJECT_SSP_IO_REQUEST |
               SCIC_LOG_OBJECT_STP_IO_REQUEST,
               "SCIC Controller 0x%x received event 0x%x for io request object that doesnt exist.\n",
               this_controller, completion_entry
            ));
         }
         break;

      case 142:
         device = this_controller->device_table[index];
         if (device != SCI_INVALID_HANDLE)
         {
            scic_sds_remote_device_event_handler(device, completion_entry);
         }
         else
         {
            SCIC_LOG_WARNING((
               sci_base_object_get_logger(this_controller),
               SCIC_LOG_OBJECT_CONTROLLER |
               SCIC_LOG_OBJECT_SMP_REMOTE_TARGET |
               SCIC_LOG_OBJECT_SSP_REMOTE_TARGET |
               SCIC_LOG_OBJECT_STP_REMOTE_TARGET,
               "SCIC Controller 0x%x received event 0x%x for remote device object that doesnt exist.\n",
               this_controller, completion_entry
            ));
         }
         break;
      }
      break;

   case 139:


   case 138:


   case 136:
      index = SCU_GET_PROTOCOL_ENGINE_INDEX(completion_entry);
      phy = &this_controller->phy_table[index];
      scic_sds_phy_event_handler(phy, completion_entry);
      break;

   case 133:
   case 132:
   case 134:
      if (index < this_controller->remote_node_entries)
      {
         device = this_controller->device_table[index];

         if (device != ((void*)0))
         {
            scic_sds_remote_device_event_handler(device, completion_entry);
         }
      }
      else
      {
         SCIC_LOG_ERROR((
            sci_base_object_get_logger(this_controller),
            SCIC_LOG_OBJECT_CONTROLLER |
            SCIC_LOG_OBJECT_SMP_REMOTE_TARGET |
            SCIC_LOG_OBJECT_SSP_REMOTE_TARGET |
            SCIC_LOG_OBJECT_STP_REMOTE_TARGET,
            "SCIC Controller 0x%x received event 0x%x for remote device object 0x%0x that doesnt exist.\n",
            this_controller, completion_entry, index
         ));
      }
      break;

   default:
      SCIC_LOG_WARNING((
         sci_base_object_get_logger(this_controller),
         SCIC_LOG_OBJECT_CONTROLLER,
         "SCIC Controller received unknown event code %x\n",
         completion_entry
      ));
      break;
   }
}
