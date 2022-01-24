#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vm_size_t ;
typedef  int /*<<< orphan*/  vm_ooffset_t ;
struct vm_object {int dummy; } ;
struct drm_gem_object {int dummy; } ;
struct drm_device {TYPE_1__* driver; } ;
struct TYPE_4__ {int /*<<< orphan*/  td_ucred; } ;
struct TYPE_3__ {int /*<<< orphan*/  gem_pager_ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*) ; 
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  OBJT_MGTDEVICE ; 
 struct vm_object* FUNC3 (struct drm_gem_object*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* curthread ; 
 struct drm_gem_object* FUNC4 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_gem_object*) ; 

int
FUNC7(struct drm_device *dev, vm_ooffset_t *offset, vm_size_t size,
    struct vm_object **obj_res, int nprot)
{
	struct drm_gem_object *gem_obj;
	struct vm_object *vm_obj;

	FUNC1(dev);
	gem_obj = FUNC4(dev, *offset);
	if (gem_obj == NULL) {
		FUNC2(dev);
		return (-ENODEV);
	}
	FUNC5(gem_obj);
	FUNC2(dev);
	vm_obj = FUNC3(gem_obj, OBJT_MGTDEVICE,
	    dev->driver->gem_pager_ops, size, nprot,
	    FUNC0(*offset), curthread->td_ucred);
	if (vm_obj == NULL) {
		FUNC6(gem_obj);
		return (-EINVAL);
	}
	*offset = FUNC0(*offset);
	*obj_res = vm_obj;
	return (0);
}