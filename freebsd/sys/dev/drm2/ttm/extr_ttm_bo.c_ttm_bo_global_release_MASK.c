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
struct ttm_bo_global {int /*<<< orphan*/  kobj_ref; } ;
struct drm_global_reference {struct ttm_bo_global* object; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ttm_bo_global*) ; 

void FUNC2(struct drm_global_reference *ref)
{
	struct ttm_bo_global *glob = ref->object;

	if (FUNC0(&glob->kobj_ref))
		FUNC1(glob);
}