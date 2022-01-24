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
struct drm_gem_close {int /*<<< orphan*/  handle; } ;
struct drm_file {int dummy; } ;
struct drm_device {TYPE_1__* driver; } ;
struct TYPE_2__ {int driver_features; } ;

/* Variables and functions */
 int DRIVER_GEM ; 
 int ENODEV ; 
 int FUNC0 (struct drm_file*,int /*<<< orphan*/ ) ; 

int
FUNC1(struct drm_device *dev, void *data,
		    struct drm_file *file_priv)
{
	struct drm_gem_close *args = data;
	int ret;

	if (!(dev->driver->driver_features & DRIVER_GEM))
		return -ENODEV;

	ret = FUNC0(file_priv, args->handle);

	return ret;
}