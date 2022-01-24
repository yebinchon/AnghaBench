#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct stack {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* dbbe_trace ) () ;} ;

/* Variables and functions */
 TYPE_1__* kdb_dbbe ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct stack*) ; 
 int /*<<< orphan*/  FUNC2 (struct stack*) ; 
 int /*<<< orphan*/  FUNC3 (struct stack*) ; 
 int /*<<< orphan*/  FUNC4 () ; 

void
FUNC5(void)
{

	if (kdb_dbbe != NULL && kdb_dbbe->dbbe_trace != NULL) {
		FUNC0("KDB: stack backtrace:\n");
		kdb_dbbe->dbbe_trace();
	}
#ifdef STACK
	else {
		struct stack st;

		printf("KDB: stack backtrace:\n");
		stack_zero(&st);
		stack_save(&st);
		stack_print_ddb(&st);
	}
#endif
}