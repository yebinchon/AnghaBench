#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct trapframe {int dummy; } ;
struct thread {int /*<<< orphan*/  td_intr_nesting_level; struct trapframe* td_intr_frame; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct thread* curthread ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static void
FUNC3(struct trapframe *tf)
{
	struct trapframe *oldframe;
	struct thread *td;

	FUNC0();
	td = curthread;
	td->td_intr_nesting_level++;
	oldframe = td->td_intr_frame;
	td->td_intr_frame = tf;
	FUNC2();
	td->td_intr_frame = oldframe;
	td->td_intr_nesting_level--;
	FUNC1();
}