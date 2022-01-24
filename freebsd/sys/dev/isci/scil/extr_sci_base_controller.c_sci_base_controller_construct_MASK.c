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
typedef  int /*<<< orphan*/  U32 ;
struct TYPE_3__ {int /*<<< orphan*/  state_machine; int /*<<< orphan*/  mdl; int /*<<< orphan*/  parent; } ;
typedef  int /*<<< orphan*/  SCI_PHYSICAL_MEMORY_DESCRIPTOR_T ;
typedef  int /*<<< orphan*/  SCI_MEMORY_DESCRIPTOR_LIST_HANDLE_T ;
typedef  int /*<<< orphan*/  SCI_BASE_STATE_T ;
typedef  int /*<<< orphan*/  SCI_BASE_OBJECT_T ;
typedef  int /*<<< orphan*/  SCI_BASE_LOGGER_T ;
typedef  TYPE_1__ SCI_BASE_CONTROLLER_T ;

/* Variables and functions */
 int /*<<< orphan*/  SCI_BASE_CONTROLLER_STATE_INITIAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(
   SCI_BASE_CONTROLLER_T               * this_controller,
   SCI_BASE_LOGGER_T                   * logger,
   SCI_BASE_STATE_T                    * state_table,
   SCI_PHYSICAL_MEMORY_DESCRIPTOR_T    * mdes,
   U32                                   mde_count,
   SCI_MEMORY_DESCRIPTOR_LIST_HANDLE_T   next_mdl
)
{
   FUNC1((SCI_BASE_OBJECT_T *)this_controller, logger);

   FUNC2(
      &this_controller->state_machine,
      &this_controller->parent,
      state_table,
      SCI_BASE_CONTROLLER_STATE_INITIAL
   );

   FUNC0(&this_controller->mdl, mdes, mde_count, next_mdl);

   FUNC3(&this_controller->state_machine);
}