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
struct ttm_buffer_object {struct ttm_bo_device* bdev; } ;
struct ttm_bo_device {int /*<<< orphan*/  addr_space_rb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct ttm_buffer_object*) ; 
 int /*<<< orphan*/  ttm_bo_device_buffer_objects ; 

__attribute__((used)) static void FUNC1(struct ttm_buffer_object *bo)
{
	struct ttm_bo_device *bdev = bo->bdev;

	/* The caller acquired bdev->vm_lock. */
	FUNC0(ttm_bo_device_buffer_objects, &bdev->addr_space_rb, bo);
}