
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int U8 ;
struct TYPE_9__ {int parent; } ;
struct TYPE_8__ {int core_object; } ;
struct TYPE_7__ {int device_port_width; int core_object; TYPE_5__ parent; int ready_substate_machine; int starting_substate_machine; int * ea_target_reset_request_scheduled; int destination_state; scalar_t__ expander_phy_identifier; int * containing_device; int is_currently_discovered; scalar_t__ task_request_count; scalar_t__ request_count; int operation_status; int destruct_when_stopped; TYPE_2__* domain; } ;
typedef void* SCI_REMOTE_DEVICE_HANDLE_T ;
typedef scalar_t__ SCI_DOMAIN_HANDLE_T ;
typedef TYPE_1__ SCIF_SAS_REMOTE_DEVICE_T ;
typedef TYPE_2__ SCIF_SAS_DOMAIN_T ;


 int FALSE ;
 int SCIF_LOG_OBJECT_REMOTE_DEVICE ;
 int SCIF_LOG_TRACE (int ) ;
 int SCIF_SAS_REMOTE_DEVICE_DESTINATION_STATE_UNSPECIFIED ;
 int SCIF_SAS_REMOTE_DEVICE_READY_SUBSTATE_OPERATIONAL ;
 int SCIF_SAS_REMOTE_DEVICE_STARTING_SUBSTATE_AWAIT_COMPLETE ;
 int SCI_SUCCESS ;
 int TRUE ;
 int memset (void*,int ,int) ;
 int sci_base_object_get_logger (TYPE_2__*) ;
 int sci_base_remote_device_construct (TYPE_5__*,int ,int ) ;
 int sci_base_state_machine_construct (int *,int *,int ,int ) ;
 int sci_object_set_association (int ,TYPE_1__*) ;
 int scic_remote_device_construct (int ,int *,int *) ;
 int scif_sas_remote_device_initialize_state_logging (TYPE_1__*) ;
 int scif_sas_remote_device_ready_substate_table ;
 int scif_sas_remote_device_starting_substate_table ;
 int scif_sas_remote_device_state_table ;

void scif_remote_device_construct(
   SCI_DOMAIN_HANDLE_T domain,
   void * remote_device_memory,
   SCI_REMOTE_DEVICE_HANDLE_T * new_scif_remote_device_handle
)
{
   SCIF_SAS_DOMAIN_T * fw_domain = (SCIF_SAS_DOMAIN_T *) domain;
   SCIF_SAS_REMOTE_DEVICE_T * fw_device = (SCIF_SAS_REMOTE_DEVICE_T *)
                                          remote_device_memory;

   SCIF_LOG_TRACE((
      sci_base_object_get_logger(fw_domain),
      SCIF_LOG_OBJECT_REMOTE_DEVICE,
      "scif_remote_device_construct(0x%x, 0x%x, 0x%x) enter\n",
      domain, remote_device_memory, new_scif_remote_device_handle
   ));

   memset(remote_device_memory, 0, sizeof(SCIF_SAS_REMOTE_DEVICE_T));



   *new_scif_remote_device_handle = remote_device_memory;

   fw_device->domain = fw_domain;
   fw_device->destruct_when_stopped = FALSE;

   fw_device->operation_status = SCI_SUCCESS;
   fw_device->request_count = 0;
   fw_device->task_request_count = 0;
   fw_device->is_currently_discovered = TRUE;
   fw_device->containing_device = ((void*)0);
   fw_device->device_port_width = 1;
   fw_device->expander_phy_identifier = 0;
   fw_device->destination_state =
      SCIF_SAS_REMOTE_DEVICE_DESTINATION_STATE_UNSPECIFIED;
   fw_device->ea_target_reset_request_scheduled = ((void*)0);



   sci_base_remote_device_construct(
      &fw_device->parent,
      sci_base_object_get_logger(fw_domain),
      scif_sas_remote_device_state_table
   );

   sci_base_state_machine_construct(
      &fw_device->starting_substate_machine,
      &fw_device->parent.parent,
      scif_sas_remote_device_starting_substate_table,
      SCIF_SAS_REMOTE_DEVICE_STARTING_SUBSTATE_AWAIT_COMPLETE
   );

   sci_base_state_machine_construct(
      &fw_device->ready_substate_machine,
      &fw_device->parent.parent,
      scif_sas_remote_device_ready_substate_table,
      SCIF_SAS_REMOTE_DEVICE_READY_SUBSTATE_OPERATIONAL
   );

   scif_sas_remote_device_initialize_state_logging(fw_device);

   scic_remote_device_construct(
      fw_domain->core_object,
      ((U8*) remote_device_memory) + sizeof(SCIF_SAS_REMOTE_DEVICE_T),
      &fw_device->core_object
   );




   sci_object_set_association(fw_device->core_object, fw_device);
}
