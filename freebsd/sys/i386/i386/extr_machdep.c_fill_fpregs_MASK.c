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
struct thread {int /*<<< orphan*/  td_proc; } ;
struct save87 {int dummy; } ;
struct fpreg {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  sv_87; int /*<<< orphan*/  sv_xmm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct thread*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct fpreg*,int) ; 
 scalar_t__ cpu_fxsr ; 
 struct thread* curthread ; 
 TYPE_1__* FUNC4 (struct thread*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct save87*) ; 
 int /*<<< orphan*/  FUNC6 (struct thread*) ; 

int
FUNC7(struct thread *td, struct fpreg *fpregs)
{

	FUNC0(td == curthread || FUNC2(td) ||
	    FUNC1(td->td_proc),
	    ("not suspended thread %p", td));
	FUNC6(td);
	if (cpu_fxsr)
		FUNC5(&FUNC4(td)->sv_xmm,
		    (struct save87 *)fpregs);
	else
		FUNC3(&FUNC4(td)->sv_87, fpregs,
		    sizeof(*fpregs));
	return (0);
}