
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int U8 ;
struct TYPE_9__ {void* count; } ;
struct TYPE_8__ {void* count; } ;
struct TYPE_10__ {TYPE_2__ address_table; TYPE_1__ buffers; } ;
struct TYPE_11__ {int logical_port_entries; TYPE_3__ uf_control; int task_context_entries; int remote_node_entries; int completion_queue_entries; int completion_event_entries; scalar_t__ invalid_phy_mask; int * port_table; int * phy_table; int port_agent; } ;
typedef int SCI_BASE_OBJECT_T ;
typedef TYPE_4__ SCIC_SDS_CONTROLLER_T ;


 int SCIC_SDS_DUMMY_PORT ;
 int SCI_BASE_CONTROLLER_STATE_RESET ;
 int SCI_MAX_PHYS ;
 int SCI_MAX_PORTS ;
 int SCI_MAX_REMOTE_DEVICES ;
 int SCU_COMPLETION_QUEUE_COUNT ;
 int SCU_EVENT_COUNT ;
 int SCU_IO_REQUEST_COUNT ;
 void* SCU_UNSOLICITED_FRAME_COUNT ;
 int scic_sds_controller_set_base_state_handlers (TYPE_4__*,int ) ;
 int scic_sds_controller_set_default_config_parameters (TYPE_4__*) ;
 int scic_sds_phy_construct (int *,int *,int) ;
 int scic_sds_port_configuration_agent_construct (int *) ;
 int scic_sds_port_construct (int *,int,TYPE_4__*) ;

__attribute__((used)) static
void scic_sds_controller_reset_state_enter(
   SCI_BASE_OBJECT_T *object
)
{
   U8 index;
   SCIC_SDS_CONTROLLER_T *this_controller;
   this_controller= (SCIC_SDS_CONTROLLER_T *)object;

   scic_sds_controller_set_base_state_handlers(
      this_controller, SCI_BASE_CONTROLLER_STATE_RESET);

   scic_sds_port_configuration_agent_construct(&this_controller->port_agent);


   for (index = 0; index < (SCI_MAX_PORTS + 1); index++)
   {
      scic_sds_port_construct(
         &this_controller->port_table[index],
         (index == SCI_MAX_PORTS) ? SCIC_SDS_DUMMY_PORT : index,
         this_controller
      );
   }


   for (index = 0; index < SCI_MAX_PHYS; index++)
   {

      scic_sds_phy_construct(
         &this_controller->phy_table[index],
         &this_controller->port_table[SCI_MAX_PORTS],
         index
      );
   }

   this_controller->invalid_phy_mask = 0;


   this_controller->completion_event_entries = SCU_EVENT_COUNT;
   this_controller->completion_queue_entries = SCU_COMPLETION_QUEUE_COUNT;
   this_controller->remote_node_entries = SCI_MAX_REMOTE_DEVICES;
   this_controller->logical_port_entries = SCI_MAX_PORTS;
   this_controller->task_context_entries = SCU_IO_REQUEST_COUNT;
   this_controller->uf_control.buffers.count = SCU_UNSOLICITED_FRAME_COUNT;
   this_controller->uf_control.address_table.count= SCU_UNSOLICITED_FRAME_COUNT;


   scic_sds_controller_set_default_config_parameters(this_controller);
}
