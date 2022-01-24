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
typedef  int /*<<< orphan*/  vm_offset_t ;
struct ttm_mem_type_manager {int dummy; } ;
struct TYPE_4__ {size_t mem_type; } ;
struct ttm_buffer_object {TYPE_2__ mem; TYPE_1__* bdev; } ;
struct ttm_bo_kmap_obj {int bo_kmap_type; int num_pages; int /*<<< orphan*/ * sf; int /*<<< orphan*/ * page; int /*<<< orphan*/ * virtual; struct ttm_buffer_object* bo; int /*<<< orphan*/  size; } ;
struct TYPE_3__ {struct ttm_mem_type_manager* man; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
#define  ttm_bo_map_iomap 131 
#define  ttm_bo_map_kmap 130 
#define  ttm_bo_map_premapped 129 
#define  ttm_bo_map_vmap 128 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (struct ttm_mem_type_manager*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ttm_mem_type_manager*) ; 

void FUNC8(struct ttm_bo_kmap_obj *map)
{
	struct ttm_buffer_object *bo = map->bo;
	struct ttm_mem_type_manager *man =
		&bo->bdev->man[bo->mem.mem_type];

	if (!map->virtual)
		return;
	switch (map->bo_kmap_type) {
	case ttm_bo_map_iomap:
		FUNC3((vm_offset_t)map->virtual, map->size);
		break;
	case ttm_bo_map_vmap:
		FUNC2((vm_offset_t)(map->virtual), map->num_pages);
		FUNC1((vm_offset_t)map->virtual,
		    map->num_pages * PAGE_SIZE);
		break;
	case ttm_bo_map_kmap:
		FUNC4(map->sf);
		break;
	case ttm_bo_map_premapped:
		break;
	default:
		FUNC0(0);
	}
	(void) FUNC6(man, false);
	FUNC5(map->bo->bdev, &map->bo->mem);
	FUNC7(man);
	map->virtual = NULL;
	map->page = NULL;
	map->sf = NULL;
}