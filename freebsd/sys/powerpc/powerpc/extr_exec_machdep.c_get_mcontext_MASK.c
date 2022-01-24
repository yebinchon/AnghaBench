#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct thread {TYPE_1__* td_frame; } ;
struct TYPE_7__ {int /*<<< orphan*/  mc_onstack; } ;
typedef  TYPE_2__ mcontext_t ;
struct TYPE_8__ {int /*<<< orphan*/  td_proc; } ;
struct TYPE_6__ {int /*<<< orphan*/ * fixreg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_5__* curthread ; 
 int FUNC2 (struct thread*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

int
FUNC4(struct thread *td, mcontext_t *mcp, int flags)
{
	int error;

	error = FUNC2(td, mcp, flags);
	if (error == 0) {
		FUNC0(curthread->td_proc);
		mcp->mc_onstack = FUNC3(td->td_frame->fixreg[1]);
		FUNC1(curthread->td_proc);
	}

	return (error);
}