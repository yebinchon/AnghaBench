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
struct thread {TYPE_1__* td_frame; } ;
struct fpreg {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  f0; } ;

/* Variables and functions */
 struct thread* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct thread*) ; 
 int /*<<< orphan*/  fpcurthread ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct fpreg*,int) ; 

int
FUNC3(struct thread *td, struct fpreg *fpregs)
{
	if (FUNC0(fpcurthread) == td)
		FUNC1(fpcurthread, (struct thread *)0);
	FUNC2(&td->td_frame->f0, fpregs, sizeof(struct fpreg));
	return 0;
}