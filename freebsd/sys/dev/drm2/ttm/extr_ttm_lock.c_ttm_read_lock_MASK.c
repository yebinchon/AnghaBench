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
struct ttm_lock {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int EINTR ; 
 int ERESTART ; 
 int ERESTARTSYS ; 
 int PCATCH ; 
 int /*<<< orphan*/  FUNC0 (struct ttm_lock*) ; 
 int FUNC1 (struct ttm_lock*,int /*<<< orphan*/ *,int,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int
FUNC3(struct ttm_lock *lock, bool interruptible)
{
	const char *wmsg;
	int flags, ret;

	ret = 0;
	if (interruptible) {
		flags = PCATCH;
		wmsg = "ttmri";
	} else {
		flags = 0;
		wmsg = "ttmr";
	}
	FUNC2(&lock->lock);
	while (!FUNC0(lock)) {
		ret = -FUNC1(lock, &lock->lock, flags, wmsg, 0);
		if (ret == -EINTR || ret == -ERESTART)
			ret = -ERESTARTSYS;
		if (ret != 0)
			break;
	}
	return (ret);
}