
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int U32 ;
typedef size_t U16 ;
struct TYPE_17__ {size_t task_context_entries; size_t logical_port_entries; int timeout_timer; TYPE_3__* port_table; int remote_node_entries; int available_remote_nodes; int tci_pool; } ;
struct TYPE_16__ {int parent; TYPE_2__* state_handlers; } ;
struct TYPE_14__ {scalar_t__ (* start_handler ) (int *) ;} ;
struct TYPE_15__ {TYPE_1__ parent; } ;
typedef scalar_t__ SCI_STATUS ;
typedef int SCI_BASE_CONTROLLER_T ;
typedef TYPE_4__ SCIC_SDS_CONTROLLER_T ;


 int SCI_BASE_CONTROLLER_STATE_STARTING ;
 scalar_t__ SCI_SUCCESS ;
 int sci_base_state_machine_change_state (int ,int ) ;
 int sci_pool_initialize (int ) ;
 int sci_pool_put (int ,size_t) ;
 int scic_cb_timer_start (int *,int ,int ) ;
 int scic_controller_disable_interrupts (int *) ;
 int scic_sds_controller_assign_task_entries (TYPE_4__*) ;
 int scic_sds_controller_enable_port_task_scheduler (TYPE_4__*) ;
 int scic_sds_controller_get_base_state_machine (TYPE_4__*) ;
 int scic_sds_controller_initialize_completion_queue (TYPE_4__*) ;
 scalar_t__ scic_sds_controller_initialize_phy_startup (TYPE_4__*) ;
 int scic_sds_controller_initialize_unsolicited_frame_queue (TYPE_4__*) ;
 int scic_sds_controller_ram_initialization (TYPE_4__*) ;
 int scic_sds_controller_start_next_phy (TYPE_4__*) ;
 scalar_t__ scic_sds_controller_validate_memory_descriptor_table (TYPE_4__*) ;
 int scic_sds_remote_node_table_initialize (int *,int ) ;
 scalar_t__ stub1 (int *) ;

__attribute__((used)) static
SCI_STATUS scic_sds_controller_initialized_state_start_handler(
   SCI_BASE_CONTROLLER_T * controller,
   U32 timeout
)
{
   U16 index;
   SCI_STATUS result;
   SCIC_SDS_CONTROLLER_T * this_controller;

   this_controller = (SCIC_SDS_CONTROLLER_T *)controller;


   result = scic_sds_controller_validate_memory_descriptor_table(this_controller);

   if (result == SCI_SUCCESS)
   {

      scic_sds_controller_ram_initialization(this_controller);
   }

   if (SCI_SUCCESS == result)
   {

      sci_pool_initialize(this_controller->tci_pool);
      for (index = 0; index < this_controller->task_context_entries; index++)
      {
         sci_pool_put(this_controller->tci_pool, index);
      }


      scic_sds_remote_node_table_initialize(
         &this_controller->available_remote_nodes,
         this_controller->remote_node_entries
      );
   }

   if (SCI_SUCCESS == result)
   {


      scic_controller_disable_interrupts(controller);


      scic_sds_controller_enable_port_task_scheduler(this_controller);


      scic_sds_controller_assign_task_entries(this_controller);


      scic_sds_controller_initialize_completion_queue(this_controller);


      scic_sds_controller_initialize_unsolicited_frame_queue(this_controller);


      result = scic_sds_controller_initialize_phy_startup(this_controller);
   }


   for (
          index = 0;
          (index < this_controller->logical_port_entries) && (result == SCI_SUCCESS);
          index++
       )
   {
      result = this_controller->port_table[index].
         state_handlers->parent.start_handler(&this_controller->port_table[index].parent);
   }

   if (SCI_SUCCESS == result)
   {
      scic_sds_controller_start_next_phy(this_controller);


      if (timeout != 0)
         scic_cb_timer_start(controller, this_controller->timeout_timer, timeout);

      sci_base_state_machine_change_state(
         scic_sds_controller_get_base_state_machine(this_controller),
         SCI_BASE_CONTROLLER_STATE_STARTING
      );
   }

   return result;
}
