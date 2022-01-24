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
struct sigaltstack_args {int /*<<< orphan*/ * oss; int /*<<< orphan*/ * ss; } ;
typedef  int /*<<< orphan*/  stack_t ;
typedef  int /*<<< orphan*/  ss ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (struct thread*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int
FUNC3(struct thread *td, struct sigaltstack_args *uap)
{
	stack_t ss, oss;
	int error;

	if (uap->ss != NULL) {
		error = FUNC0(uap->ss, &ss, sizeof(ss));
		if (error)
			return (error);
	}
	error = FUNC2(td, (uap->ss != NULL) ? &ss : NULL,
	    (uap->oss != NULL) ? &oss : NULL);
	if (error)
		return (error);
	if (uap->oss != NULL)
		error = FUNC1(&oss, uap->oss, sizeof(stack_t));
	return (error);
}