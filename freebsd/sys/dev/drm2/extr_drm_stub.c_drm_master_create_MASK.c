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
struct drm_minor {int /*<<< orphan*/  master_list; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock_queue; int /*<<< orphan*/  spinlock; } ;
struct drm_master {int /*<<< orphan*/  head; struct drm_minor* minor; int /*<<< orphan*/  magicfree; int /*<<< orphan*/  magiclist; TYPE_1__ lock; int /*<<< orphan*/  refcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  DRM_MAGIC_HASH_ORDER ; 
 int /*<<< orphan*/  DRM_MEM_KMS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct drm_master* FUNC4 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 

struct drm_master *FUNC7(struct drm_minor *minor)
{
	struct drm_master *master;

	master = FUNC4(sizeof(*master), DRM_MEM_KMS, M_NOWAIT | M_ZERO);
	if (!master)
		return NULL;

	FUNC6(&master->refcount, 1);
	FUNC5(&master->lock.spinlock, "drm_master__lock__spinlock",
	    NULL, MTX_DEF);
	FUNC0(&master->lock.lock_queue);
	FUNC2(&master->magiclist, DRM_MAGIC_HASH_ORDER);
	FUNC1(&master->magicfree);
	master->minor = minor;

	FUNC3(&master->head, &minor->master_list);

	return master;
}