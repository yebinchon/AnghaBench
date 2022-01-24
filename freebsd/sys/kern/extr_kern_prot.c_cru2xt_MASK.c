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
struct xucred {int /*<<< orphan*/  cr_pid; } ;
struct thread {TYPE_1__* td_proc; int /*<<< orphan*/  td_ucred; } ;
struct TYPE_2__ {int /*<<< orphan*/  p_pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct xucred*) ; 

void
FUNC1(struct thread *td, struct xucred *xcr)
{

	FUNC0(td->td_ucred, xcr);
	xcr->cr_pid = td->td_proc->p_pid;
}