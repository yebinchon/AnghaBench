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
 int EBUSY ; 
 int EINTR ; 
 int ERESTART ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int PCATCH ; 
 int /*<<< orphan*/  FUNC1 (struct ttm_lock*,int*) ; 
 int FUNC2 (struct ttm_lock*,int /*<<< orphan*/ *,int,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct ttm_lock *lock, bool interruptible)
{
	const char *wmsg;
	int flags, ret;
	bool locked;

	ret = 0;
	if (interruptible) {
		flags = PCATCH;
		wmsg = "ttmrti";
	} else {
		flags = 0;
		wmsg = "ttmrt";
	}
	FUNC3(&lock->lock);
	while (!FUNC1(lock, &locked)) {
		ret = -FUNC2(lock, &lock->lock, flags, wmsg, 0);
		if (ret == -EINTR || ret == -ERESTART)
			ret = -ERESTARTSYS;
		if (ret != 0)
			break;
	}
	FUNC0(!locked || ret == 0);
	FUNC4(&lock->lock);

	return (locked) ? 0 : -EBUSY;
}