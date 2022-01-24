#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ U32 ;
struct TYPE_3__ {int /*<<< orphan*/  state_machine; } ;
typedef  TYPE_1__ SCIC_SDS_REMOTE_NODE_CONTEXT_T ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ SCIC_SDS_REMOTE_NODE_CONTEXT_INITIAL_STATE ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 

BOOL FUNC1(
   SCIC_SDS_REMOTE_NODE_CONTEXT_T * this_rnc
      )
{
   U32 current_state = FUNC0(&this_rnc->state_machine);

   if (current_state == SCIC_SDS_REMOTE_NODE_CONTEXT_INITIAL_STATE)
   {
      return FALSE;
   }

   return TRUE;
}