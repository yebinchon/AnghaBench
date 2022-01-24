#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * mm_node; } ;
struct ttm_buffer_object {size_t acc_size; int /*<<< orphan*/  (* destroy ) (struct ttm_buffer_object*) ;TYPE_2__* glob; scalar_t__ ttm; int /*<<< orphan*/  ddestroy; int /*<<< orphan*/  lru; TYPE_1__ mem; int /*<<< orphan*/ * sync_obj; int /*<<< orphan*/  cpu_writers; int /*<<< orphan*/  kref; int /*<<< orphan*/  list_kref; struct ttm_bo_device* bdev; } ;
struct ttm_bo_device {TYPE_3__* glob; } ;
struct TYPE_6__ {int /*<<< orphan*/  mem_glob; } ;
struct TYPE_5__ {int /*<<< orphan*/  bo_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  M_TTM_BO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ttm_buffer_object*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct ttm_buffer_object*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 

__attribute__((used)) static void FUNC8(struct ttm_buffer_object *bo)
{
	struct ttm_bo_device *bdev = bo->bdev;
	size_t acc_size = bo->acc_size;

	FUNC0(FUNC2(&bo->list_kref) == 0);
	FUNC0(FUNC2(&bo->kref) == 0);
	FUNC0(FUNC2(&bo->cpu_writers) == 0);
	FUNC0(bo->sync_obj == NULL);
	FUNC0(bo->mem.mm_node == NULL);
	FUNC0(FUNC4(&bo->lru));
	FUNC0(FUNC4(&bo->ddestroy));

	if (bo->ttm)
		FUNC7(bo->ttm);
	FUNC1(&bo->glob->bo_count);
	if (bo->destroy)
		bo->destroy(bo);
	else {
		FUNC3(bo, M_TTM_BO);
	}
	FUNC6(bdev->glob->mem_glob, acc_size);
}