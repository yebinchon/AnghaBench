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
struct thread {int /*<<< orphan*/  td_tid; } ;
struct TYPE_2__ {int /*<<< orphan*/  uc_mcontext; } ;
struct thr_create_initthr_args {TYPE_1__ ctx; int /*<<< orphan*/ * tid; } ;

/* Variables and functions */
 int EFAULT ; 
 int FUNC0 (struct thread*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct thread *td, void *thunk)
{
	struct thr_create_initthr_args *args;

	/* Copy out the child tid. */
	args = thunk;
	if (args->tid != NULL && FUNC1(args->tid, td->td_tid))
		return (EFAULT);

	return (FUNC0(td, &args->ctx.uc_mcontext));
}