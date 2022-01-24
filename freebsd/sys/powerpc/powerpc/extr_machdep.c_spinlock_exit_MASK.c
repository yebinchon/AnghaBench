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
struct TYPE_2__ {scalar_t__ md_spinlock_count; int /*<<< orphan*/  md_saved_msr; } ;
struct thread {TYPE_1__ td_md; } ;
typedef  int /*<<< orphan*/  register_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 struct thread* curthread ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 

void
FUNC3(void)
{
	struct thread *td;
	register_t msr;

	td = curthread;
	FUNC0();
	msr = td->td_md.md_saved_msr;
	td->td_md.md_spinlock_count--;
	if (td->td_md.md_spinlock_count == 0) {
		FUNC1(msr);
		FUNC2();
	}
}