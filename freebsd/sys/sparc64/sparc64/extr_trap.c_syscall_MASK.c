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
struct trapframe {int /*<<< orphan*/  tf_tpc; } ;
struct thread {TYPE_1__* td_pcb; int /*<<< orphan*/ * td_proc; struct trapframe* td_frame; } ;
struct TYPE_2__ {int /*<<< orphan*/  pcb_tpc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct trapframe*) ; 
 struct thread* curthread ; 
 int /*<<< orphan*/  FUNC2 (struct thread*) ; 
 int /*<<< orphan*/  FUNC3 (struct thread*) ; 

void
FUNC4(struct trapframe *tf)
{
	struct thread *td;

	td = curthread;
	td->td_frame = tf;

	FUNC0(td != NULL, ("trap: curthread NULL"));
	FUNC0(td->td_proc != NULL, ("trap: curproc NULL"));

	/*
	 * For syscalls, we don't want to retry the faulting instruction
	 * (usually), instead we need to advance one instruction.
	 */
	td->td_pcb->pcb_tpc = tf->tf_tpc;
	FUNC1(tf);

	FUNC2(td);
	FUNC3(td);
}