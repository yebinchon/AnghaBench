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
struct drm_local_map {scalar_t__ handle; } ;
struct drm_file {int dummy; } ;
struct drm_device {scalar_t__ max_context; struct drm_local_map** context_sareas; } ;
struct drm_ctx_priv_map {unsigned int ctx_id; void* handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*) ; 
 int EINVAL ; 

int FUNC2(struct drm_device *dev, void *data,
		    struct drm_file *file_priv)
{
	struct drm_ctx_priv_map *request = data;
	struct drm_local_map *map;

	FUNC0(dev);
	if (dev->max_context < 0 ||
	    request->ctx_id >= (unsigned) dev->max_context) {
		FUNC1(dev);
		return EINVAL;
	}

	map = dev->context_sareas[request->ctx_id];
	FUNC1(dev);

	request->handle = (void *)map->handle;

	return 0;
}