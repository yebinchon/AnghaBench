#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  size_t vm_pindex_t ;
typedef  TYPE_3__* vm_page_t ;
typedef  scalar_t__ vm_ooffset_t ;
typedef  TYPE_4__* vm_object_t ;
struct gntdev_gmap {size_t count; TYPE_2__* map; TYPE_1__* grant_map_ops; scalar_t__ file_index; } ;
struct TYPE_18__ {struct gntdev_gmap* handle; } ;
struct TYPE_17__ {int flags; } ;
struct TYPE_16__ {scalar_t__ phys_base_addr; } ;
struct TYPE_15__ {scalar_t__ status; } ;

/* Variables and functions */
 scalar_t__ GNTST_okay ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 size_t FUNC1 (scalar_t__) ; 
 int PG_FICTITIOUS ; 
 TYPE_3__* FUNC2 (scalar_t__) ; 
 int VM_PAGER_FAIL ; 
 int VM_PAGER_OK ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,TYPE_4__*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int FUNC8 (TYPE_3__*) ; 

__attribute__((used)) static int
FUNC9(vm_object_t object, vm_ooffset_t offset, int prot,
    vm_page_t *mres)
{
	struct gntdev_gmap *gmap = object->handle;
	vm_pindex_t pidx, ridx;
	vm_page_t page, oldm;
	vm_ooffset_t relative_offset;

	if (gmap->map == NULL)
		return (VM_PAGER_FAIL);

	relative_offset = offset - gmap->file_index;

	pidx = FUNC1(offset);
	ridx = FUNC1(relative_offset);
	if (ridx >= gmap->count ||
	    gmap->grant_map_ops[ridx].status != GNTST_okay)
		return (VM_PAGER_FAIL);

	page = FUNC2(gmap->map->phys_base_addr + relative_offset);
	if (page == NULL)
		return (VM_PAGER_FAIL);

	FUNC0((page->flags & PG_FICTITIOUS) != 0,
	    ("not fictitious %p", page));
	FUNC0(FUNC8(page), ("page %p is not wired", page));
	FUNC0(!FUNC3(page), ("page %p is busy", page));

	if (*mres != NULL) {
		oldm = *mres;
		FUNC5(oldm);
		*mres = NULL;
	}

	FUNC4(page, 0);
	FUNC7(page);
	FUNC6(page, object, pidx);
	*mres = page;
	return (VM_PAGER_OK);
}