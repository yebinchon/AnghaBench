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
typedef  int /*<<< orphan*/  uint32_t ;
struct drm_gem_object {struct drm_device* dev; } ;
struct drm_file {int dummy; } ;
struct drm_device {TYPE_1__* driver; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* gem_close_object ) (struct drm_gem_object*,struct drm_file*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_gem_object*,struct drm_file*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_gem_object*,struct drm_file*) ; 

__attribute__((used)) static int
FUNC3(uint32_t name, void *ptr, void *data)
{
	struct drm_file *file_priv = data;
	struct drm_gem_object *obj = ptr;
	struct drm_device *dev = obj->dev;

#if defined(FREEBSD_NOTYET)
	drm_gem_remove_prime_handles(obj, file_priv);
#endif

	if (dev->driver->gem_close_object)
		dev->driver->gem_close_object(obj, file_priv);

	FUNC0(obj);

	return 0;
}