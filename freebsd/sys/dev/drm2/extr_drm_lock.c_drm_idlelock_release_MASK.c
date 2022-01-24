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
struct drm_lock_data {scalar_t__ kernel_waiters; int /*<<< orphan*/  spinlock; scalar_t__ idle_has_lock; int /*<<< orphan*/  lock_queue; TYPE_1__* hw_lock; } ;
struct TYPE_2__ {unsigned int lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_KERNEL_CONTEXT ; 
 unsigned int FUNC0 (unsigned int volatile*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct drm_lock_data *lock_data)
{
	unsigned int old, prev;
	volatile unsigned int *lock = &lock_data->hw_lock->lock;

	FUNC1(&lock_data->spinlock);
	if (--lock_data->kernel_waiters == 0) {
		if (lock_data->idle_has_lock) {
			do {
				old = *lock;
				prev = FUNC0(lock, old, DRM_KERNEL_CONTEXT);
			} while (prev != old);
			FUNC3(&lock_data->lock_queue);
			lock_data->idle_has_lock = 0;
		}
	}
	FUNC2(&lock_data->spinlock);
}