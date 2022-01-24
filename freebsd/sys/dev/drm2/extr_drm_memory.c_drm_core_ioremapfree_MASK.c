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
typedef  int /*<<< orphan*/  vm_offset_t ;
struct drm_local_map {scalar_t__ type; int /*<<< orphan*/  size; scalar_t__ handle; } ;
struct drm_device {TYPE_1__* agp; } ;
struct TYPE_2__ {scalar_t__ cant_use_aperture; } ;

/* Variables and functions */
 scalar_t__ _DRM_AGP ; 
 scalar_t__ FUNC0 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

void FUNC3(struct drm_local_map *map, struct drm_device *dev)
{
	if (!map->handle || !map->size)
		return;

	if (FUNC0(dev) &&
	    dev->agp && dev->agp->cant_use_aperture && map->type == _DRM_AGP)
		FUNC2(map->handle);
	else
		FUNC1((vm_offset_t)map->handle, map->size);
}