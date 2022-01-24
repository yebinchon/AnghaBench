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
struct timespec {int dummy; } ;
struct thread {int dummy; } ;
typedef  int /*<<< orphan*/  rqt ;
typedef  int /*<<< orphan*/  rmt ;
typedef  int /*<<< orphan*/  clockid_t ;

/* Variables and functions */
 int EFAULT ; 
 int EINTR ; 
 int TIMER_ABSTIME ; 
 int /*<<< orphan*/  VM_PROT_WRITE ; 
 int FUNC0 (struct timespec const*,struct timespec*,int) ; 
 int FUNC1 (struct timespec*,struct timespec*,int) ; 
 int FUNC2 (struct thread*,int /*<<< orphan*/ ,int,struct timespec*,struct timespec*) ; 
 int /*<<< orphan*/  FUNC3 (struct timespec*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct thread *td, clockid_t clock_id, int flags,
    const struct timespec *ua_rqtp, struct timespec *ua_rmtp)
{
	struct timespec rmt, rqt;
	int error;

	error = FUNC0(ua_rqtp, &rqt, sizeof(rqt));
	if (error)
		return (error);
	if (ua_rmtp != NULL && (flags & TIMER_ABSTIME) == 0 &&
	    !FUNC3(ua_rmtp, sizeof(rmt), VM_PROT_WRITE))
		return (EFAULT);
	error = FUNC2(td, clock_id, flags, &rqt, &rmt);
	if (error == EINTR && ua_rmtp != NULL && (flags & TIMER_ABSTIME) == 0) {
		int error2;

		error2 = FUNC1(&rmt, ua_rmtp, sizeof(rmt));
		if (error2)
			error = error2;
	}
	return (error);
}