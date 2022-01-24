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
struct drm_gem_mm {int /*<<< orphan*/  idxunr; int /*<<< orphan*/  offset_hash; } ;
struct drm_device {struct drm_gem_mm* mm_private; int /*<<< orphan*/  object_names; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  DRM_GEM_MAX_IDX ; 
 int /*<<< orphan*/  DRM_MEM_DRIVER ; 
 int ENOMEM ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_gem_mm*,int /*<<< orphan*/ ) ; 
 struct drm_gem_mm* FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int
FUNC6(struct drm_device *dev)
{
	struct drm_gem_mm *mm;

	FUNC1(&dev->object_names);

	mm = FUNC4(sizeof(*mm), DRM_MEM_DRIVER, M_NOWAIT);
	if (!mm) {
		FUNC0("out of memory\n");
		return -ENOMEM;
	}

	dev->mm_private = mm;

	if (FUNC2(&mm->offset_hash, 19)) {
		FUNC3(mm, DRM_MEM_DRIVER);
		return -ENOMEM;
	}

	mm->idxunr = FUNC5(0, DRM_GEM_MAX_IDX, NULL);

	return 0;
}