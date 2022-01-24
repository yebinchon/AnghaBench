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
struct ttm_object_device {int /*<<< orphan*/  object_lock; int /*<<< orphan*/  object_hash; } ;
struct ttm_base_object {int /*<<< orphan*/  (* refcount_release ) (struct ttm_base_object**) ;TYPE_1__* tfile; int /*<<< orphan*/  hash; } ;
struct TYPE_2__ {struct ttm_object_device* tdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ttm_base_object**) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__**) ; 

__attribute__((used)) static void FUNC5(struct ttm_base_object *base)
{
	struct ttm_object_device *tdev = base->tfile->tdev;

	(void)FUNC0(&tdev->object_hash, &base->hash);
	FUNC2(&tdev->object_lock);
	/*
	 * Note: We don't use synchronize_rcu() here because it's far
	 * too slow. It's up to the user to free the object using
	 * call_rcu() or ttm_base_object_kfree().
	 */

	if (base->refcount_release) {
		FUNC4(&base->tfile);
		base->refcount_release(&base);
	}
	FUNC1(&tdev->object_lock);
}