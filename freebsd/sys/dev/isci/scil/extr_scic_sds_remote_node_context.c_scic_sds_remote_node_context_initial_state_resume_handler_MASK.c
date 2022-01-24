#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_6__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ previous_state_id; } ;
struct TYPE_7__ {scalar_t__ remote_node_index; TYPE_6__ state_machine; } ;
typedef  int /*<<< orphan*/  SCI_STATUS ;
typedef  TYPE_1__ SCIC_SDS_REMOTE_NODE_CONTEXT_T ;
typedef  int /*<<< orphan*/  SCIC_SDS_REMOTE_NODE_CONTEXT_CALLBACK ;

/* Variables and functions */
 scalar_t__ SCIC_SDS_REMOTE_NODE_CONTEXT_INVALIDATING_STATE ; 
 scalar_t__ SCIC_SDS_REMOTE_NODE_CONTEXT_INVALID_INDEX ; 
 int /*<<< orphan*/  SCIC_SDS_REMOTE_NODE_CONTEXT_POSTING_STATE ; 
 int /*<<< orphan*/  SCI_FAILURE_INVALID_STATE ; 
 int /*<<< orphan*/  SCI_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static
SCI_STATUS FUNC4(
   SCIC_SDS_REMOTE_NODE_CONTEXT_T         * this_rnc,
   SCIC_SDS_REMOTE_NODE_CONTEXT_CALLBACK   the_callback,
   void                                   * callback_parameter
)
{
   if (this_rnc->remote_node_index != SCIC_SDS_REMOTE_NODE_CONTEXT_INVALID_INDEX)
   {
      FUNC3(
         this_rnc, the_callback, callback_parameter
            );

      FUNC1(this_rnc);

#if defined (SCI_LOGGING)
      // If a remote node context has a logger already, don't work on its state
      // logging.
      if (this_rnc->state_machine.previous_state_id
             != SCIC_SDS_REMOTE_NODE_CONTEXT_INVALIDATING_STATE)
         scic_sds_remote_node_context_initialize_state_logging(this_rnc);
#endif

      FUNC0(
         &this_rnc->state_machine,
         SCIC_SDS_REMOTE_NODE_CONTEXT_POSTING_STATE
            );

      return SCI_SUCCESS;
   }

   return SCI_FAILURE_INVALID_STATE;
}