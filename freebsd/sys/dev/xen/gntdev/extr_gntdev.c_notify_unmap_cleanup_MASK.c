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
typedef  int /*<<< orphan*/ * vm_page_t ;
typedef  scalar_t__ uint64_t ;
typedef  size_t uint32_t ;
struct gnttab_unmap_grant_ref {int handle; int /*<<< orphan*/  pseudo_phys_res; int /*<<< orphan*/  pseudo_phys_res_id; int /*<<< orphan*/  mem; scalar_t__ phys_base_addr; scalar_t__ dev_bus_addr; scalar_t__ host_addr; } ;
struct gntdev_gmap {int count; struct gnttab_unmap_grant_ref* map; TYPE_1__* grant_map_ops; TYPE_2__* notify; scalar_t__ file_index; } ;
struct TYPE_4__ {scalar_t__ index; } ;
struct TYPE_3__ {int handle; scalar_t__ host_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  GNTTABOP_unmap_grant_ref ; 
 int FUNC0 (int /*<<< orphan*/ ,struct gnttab_unmap_grant_ref*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  M_GNTDEV ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/ * FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  VM_ALLOC_WAITFAIL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct gnttab_unmap_grant_ref*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gntdev_dev ; 
 struct gnttab_unmap_grant_ref* FUNC7 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,size_t) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC12(struct gntdev_gmap *gmap)
{
	uint32_t i;
	int error, count;
	vm_page_t m;
	struct gnttab_unmap_grant_ref *unmap_ops;
	
	unmap_ops = FUNC7(sizeof(struct gnttab_unmap_grant_ref) * gmap->count,
			M_GNTDEV, M_WAITOK);
	
	/* Enumerate freeable maps. */
	count = 0;
	for (i = 0; i < gmap->count; i++) {
		if (gmap->grant_map_ops[i].handle != -1) {
			unmap_ops[count].handle = gmap->grant_map_ops[i].handle;
			unmap_ops[count].host_addr =
				gmap->grant_map_ops[i].host_addr;
			unmap_ops[count].dev_bus_addr = 0;
			count++;
		}
	}
	
	/* Perform notification. */
	if (count > 0 && gmap->notify) {
		vm_page_t page;
		uint64_t page_offset;

		page_offset = gmap->notify->index - gmap->file_index;
		page = FUNC2(gmap->map->phys_base_addr + page_offset);
		FUNC8(gmap->notify, page);
	}
	
	/* Free the pages. */
	FUNC3(gmap->map->mem);
retry:
	for (i = 0; i < gmap->count; i++) {
		m = FUNC10(gmap->map->mem, i);
		if (m == NULL)
			continue;
		if (FUNC9(m, VM_ALLOC_WAITFAIL) == 0)
			goto retry;
		FUNC5(gmap->map->mem, m);
	}
	FUNC4(gmap->map->mem);
	
	/* Perform unmap hypercall. */
	error = FUNC0(GNTTABOP_unmap_grant_ref,
	    unmap_ops, count);
	
	for (i = 0; i < gmap->count; i++) {
		gmap->grant_map_ops[i].handle = -1;
		gmap->grant_map_ops[i].host_addr = 0;
	}
	
	if (gmap->map) {
		error = FUNC11(gntdev_dev, gmap->map->pseudo_phys_res_id,
		    gmap->map->pseudo_phys_res);
		FUNC1(error == 0,
		    ("Unable to release memory resource: %d", error));

		FUNC6(gmap->map, M_GNTDEV);
		gmap->map = NULL;
	}
	
	FUNC6(unmap_ops, M_GNTDEV);
	
	return (error);
}