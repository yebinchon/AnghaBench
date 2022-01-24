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
struct TYPE_3__ {int /*<<< orphan*/  state_machine; int /*<<< orphan*/  parent; } ;
typedef  int /*<<< orphan*/  SCI_BASE_STATE_T ;
typedef  int /*<<< orphan*/  SCI_BASE_LOGGER_T ;
typedef  TYPE_1__ SCI_BASE_DOMAIN_T ;

/* Variables and functions */
 int /*<<< orphan*/  SCI_BASE_DOMAIN_STATE_INITIAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(
   SCI_BASE_DOMAIN_T * this_domain,
   SCI_BASE_LOGGER_T * logger,
   SCI_BASE_STATE_T  * state_table
)
{
   FUNC0(&this_domain->parent, logger);

   FUNC1(
      &this_domain->state_machine,
      &this_domain->parent,
      state_table,
      SCI_BASE_DOMAIN_STATE_INITIAL
   );

   FUNC2(
      &this_domain->state_machine
   );
}