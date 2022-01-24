#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  parent; int /*<<< orphan*/  initial_state_id; } ;
typedef  TYPE_1__ SCI_BASE_STATE_MACHINE_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(
   SCI_BASE_STATE_MACHINE_T *this_state_machine
)
{
   FUNC1(
      this_state_machine, this_state_machine->initial_state_id
   );

#if defined(SCI_BASE_ENABLE_SUBJECT_NOTIFICATION)
   sci_base_subject_notify(&this_state_machine->parent);
#endif

   FUNC0(this_state_machine);
}