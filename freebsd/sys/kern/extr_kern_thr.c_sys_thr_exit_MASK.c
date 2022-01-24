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
struct thread {int dummy; } ;
struct thr_exit_args {scalar_t__ state; } ;

/* Variables and functions */
 int /*<<< orphan*/  INT_MAX ; 
 int FUNC0 (struct thread*) ; 
 int /*<<< orphan*/  FUNC1 (struct thread*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (struct thread*) ; 

int
FUNC4(struct thread *td, struct thr_exit_args *uap)
    /* long *state */
{

	FUNC3(td);

	/* Signal userland that it can free the stack. */
	if ((void *)uap->state != NULL) {
		FUNC2(uap->state, 1);
		FUNC1(td, uap->state, INT_MAX, 0);
	}

	return (FUNC0(td));
}