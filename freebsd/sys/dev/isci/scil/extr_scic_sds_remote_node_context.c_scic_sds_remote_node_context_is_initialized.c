
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ U32 ;
struct TYPE_3__ {int state_machine; } ;
typedef TYPE_1__ SCIC_SDS_REMOTE_NODE_CONTEXT_T ;
typedef int BOOL ;


 int FALSE ;
 scalar_t__ SCIC_SDS_REMOTE_NODE_CONTEXT_INITIAL_STATE ;
 int TRUE ;
 scalar_t__ sci_base_state_machine_get_state (int *) ;

BOOL scic_sds_remote_node_context_is_initialized(
   SCIC_SDS_REMOTE_NODE_CONTEXT_T * this_rnc
      )
{
   U32 current_state = sci_base_state_machine_get_state(&this_rnc->state_machine);

   if (current_state == SCIC_SDS_REMOTE_NODE_CONTEXT_INITIAL_STATE)
   {
      return FALSE;
   }

   return TRUE;
}
