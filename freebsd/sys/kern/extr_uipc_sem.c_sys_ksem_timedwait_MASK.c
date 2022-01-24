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
struct timespec {int tv_nsec; } ;
struct thread {int dummy; } ;
struct ksem_timedwait_args {int /*<<< orphan*/  id; int /*<<< orphan*/ * abstime; } ;
typedef  int /*<<< orphan*/  abstime ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ *,struct timespec*,int) ; 
 int FUNC1 (struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct timespec*) ; 

int
FUNC2(struct thread *td, struct ksem_timedwait_args *uap)
{
	struct timespec abstime;
	struct timespec *ts;
	int error;

	/*
	 * We allow a null timespec (wait forever).
	 */
	if (uap->abstime == NULL)
		ts = NULL;
	else {
		error = FUNC0(uap->abstime, &abstime, sizeof(abstime));
		if (error != 0)
			return (error);
		if (abstime.tv_nsec >= 1000000000 || abstime.tv_nsec < 0)
			return (EINVAL);
		ts = &abstime;
	}
	return (FUNC1(td, uap->id, 0, ts));
}