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
struct thread {int td_tid; } ;
struct stack {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* dbbe_trace_thread ) (struct thread*) ;} ;

/* Variables and functions */
 TYPE_1__* kdb_dbbe ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct stack*) ; 
 int /*<<< orphan*/  FUNC2 (struct stack*,struct thread*) ; 
 int /*<<< orphan*/  FUNC3 (struct stack*) ; 
 int /*<<< orphan*/  FUNC4 (struct thread*) ; 

void
FUNC5(struct thread *td)
{

	if (kdb_dbbe != NULL && kdb_dbbe->dbbe_trace_thread != NULL) {
		FUNC0("KDB: stack backtrace of thread %d:\n", td->td_tid);
		kdb_dbbe->dbbe_trace_thread(td);
	}
#ifdef STACK
	else {
		struct stack st;

		printf("KDB: stack backtrace of thread %d:\n", td->td_tid);
		stack_zero(&st);
		stack_save_td(&st, td);
		stack_print_ddb(&st);
	}
#endif
}