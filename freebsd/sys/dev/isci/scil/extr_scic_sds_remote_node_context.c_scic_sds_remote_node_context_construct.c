
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int U16 ;
struct TYPE_13__ {int logger; } ;
struct TYPE_9__ {int logger; } ;
struct TYPE_10__ {TYPE_1__ parent; } ;
struct TYPE_12__ {TYPE_2__ parent; } ;
struct TYPE_11__ {int state_machine; TYPE_7__ parent; int destination_state; TYPE_4__* device; int remote_node_index; } ;
typedef TYPE_3__ SCIC_SDS_REMOTE_NODE_CONTEXT_T ;
typedef TYPE_4__ SCIC_SDS_REMOTE_DEVICE_T ;


 int SCIC_SDS_REMOTE_NODE_CONTEXT_INITIAL_STATE ;
 int SCIC_SDS_REMOTE_NODE_DESTINATION_STATE_UNSPECIFIED ;
 int memset (TYPE_3__*,int ,int) ;
 int sci_base_state_machine_construct (int *,TYPE_7__*,int ,int ) ;
 int sci_base_state_machine_start (int *) ;
 int scic_sds_remote_node_context_state_table ;

void scic_sds_remote_node_context_construct(
   SCIC_SDS_REMOTE_DEVICE_T * device,
   SCIC_SDS_REMOTE_NODE_CONTEXT_T * rnc,
   U16 remote_node_index
      )
{
   memset (rnc, 0, sizeof(SCIC_SDS_REMOTE_NODE_CONTEXT_T) );

   rnc->remote_node_index = remote_node_index;
   rnc->device = device;
   rnc->destination_state = SCIC_SDS_REMOTE_NODE_DESTINATION_STATE_UNSPECIFIED;

   rnc->parent.logger = device->parent.parent.logger;

   sci_base_state_machine_construct(
      &rnc->state_machine,
      &rnc->parent,
      scic_sds_remote_node_context_state_table,
      SCIC_SDS_REMOTE_NODE_CONTEXT_INITIAL_STATE
         );

   sci_base_state_machine_start(&rnc->state_machine);



}
