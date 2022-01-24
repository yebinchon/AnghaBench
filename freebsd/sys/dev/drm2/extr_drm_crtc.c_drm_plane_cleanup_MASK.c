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
struct drm_plane {int /*<<< orphan*/  head; int /*<<< orphan*/  base; int /*<<< orphan*/  format_types; struct drm_device* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/  num_plane; } ;
struct drm_device {TYPE_1__ mode_config; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_MEM_KMS ; 
 int /*<<< orphan*/  FUNC0 (struct drm_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct drm_plane *plane)
{
	struct drm_device *dev = plane->dev;

	FUNC4(&dev->mode_config.mutex);
	FUNC1(plane->format_types, DRM_MEM_KMS);
	FUNC0(dev, &plane->base);
	/* if not added to a list, it must be a private plane */
	if (!FUNC3(&plane->head)) {
		FUNC2(&plane->head);
		dev->mode_config.num_plane--;
	}
	FUNC5(&dev->mode_config.mutex);
}