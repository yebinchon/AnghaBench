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
struct thread {int td_pflags; } ;
struct pcb {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pcb*) ; 
 struct thread* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int TDP_KTHREAD ; 
 int /*<<< orphan*/  fpcurthread ; 
 scalar_t__ lazy_fpu_switch ; 
 int /*<<< orphan*/  FUNC3 (struct thread*,struct pcb*) ; 
 int /*<<< orphan*/  FUNC4 () ; 

void
FUNC5(struct thread *td, struct pcb *pcb)
{

	if (lazy_fpu_switch || (td->td_pflags & TDP_KTHREAD) != 0 ||
	    !FUNC0(pcb)) {
		FUNC4();
		FUNC2(fpcurthread, NULL);
	} else if (FUNC1(fpcurthread) != td) {
		FUNC3(td, pcb);
	}
}