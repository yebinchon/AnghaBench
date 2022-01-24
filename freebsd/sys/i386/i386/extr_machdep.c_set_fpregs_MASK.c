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
struct thread {int dummy; } ;
struct save87 {int dummy; } ;
struct fpreg {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  sv_87; int /*<<< orphan*/  sv_xmm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fpreg*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ cpu_fxsr ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_1__* FUNC3 (struct thread*) ; 
 int /*<<< orphan*/  FUNC4 (struct save87*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct thread*) ; 

int
FUNC6(struct thread *td, struct fpreg *fpregs)
{

	FUNC1();
	if (cpu_fxsr)
		FUNC4((struct save87 *)fpregs,
		    &FUNC3(td)->sv_xmm);
	else
		FUNC0(fpregs, &FUNC3(td)->sv_87,
		    sizeof(*fpregs));
	FUNC5(td);
	FUNC2();
	return (0);
}