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
struct ttm_lock {int flags; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int EINVAL ; 
 int TTM_VT_LOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct ttm_lock*) ; 

__attribute__((used)) static int FUNC4(struct ttm_lock *lock)
{
	int ret = 0;

	FUNC0(&lock->lock);
	if (FUNC2(!(lock->flags & TTM_VT_LOCK)))
		ret = -EINVAL;
	lock->flags &= ~TTM_VT_LOCK;
	FUNC3(lock);
	FUNC1(&lock->lock);

	return ret;
}