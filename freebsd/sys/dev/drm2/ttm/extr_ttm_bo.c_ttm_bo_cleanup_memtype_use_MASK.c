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
struct ttm_buffer_object {int /*<<< orphan*/  reserved; int /*<<< orphan*/  mem; int /*<<< orphan*/ * ttm; TYPE_2__* bdev; } ;
struct TYPE_4__ {TYPE_1__* driver; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* move_notify ) (struct ttm_buffer_object*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct ttm_buffer_object*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ttm_buffer_object*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct ttm_buffer_object**) ; 

__attribute__((used)) static void FUNC7(struct ttm_buffer_object *bo)
{
	if (bo->bdev->driver->move_notify)
		bo->bdev->driver->move_notify(bo, NULL);

	if (bo->ttm) {
		FUNC5(bo->ttm);
		FUNC4(bo->ttm);
		bo->ttm = NULL;
	}
	FUNC3(bo, &bo->mem);

	FUNC0(&bo->reserved, 0);
	FUNC6(&bo);

	/*
	 * Since the final reference to this bo may not be dropped by
	 * the current task we have to put a memory barrier here to make
	 * sure the changes done in this function are always visible.
	 *
	 * This function only needs protection against the final kref_put.
	 */
	FUNC1();
}