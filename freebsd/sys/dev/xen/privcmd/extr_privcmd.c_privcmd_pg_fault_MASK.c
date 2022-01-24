#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vm_pindex_t ;
typedef  TYPE_1__* vm_page_t ;
typedef  scalar_t__ vm_ooffset_t ;
typedef  TYPE_2__* vm_object_t ;
struct privcmd_map {int mapped; scalar_t__ size; scalar_t__ phys_base_addr; int /*<<< orphan*/  err; } ;
struct TYPE_14__ {struct privcmd_map* handle; } ;
struct TYPE_13__ {int flags; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int PG_FICTITIOUS ; 
 TYPE_1__* FUNC3 (scalar_t__) ; 
 int VM_PAGER_FAIL ; 
 int VM_PAGER_OK ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int FUNC9 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC10(vm_object_t object, vm_ooffset_t offset,
    int prot, vm_page_t *mres)
{
	struct privcmd_map *map = object->handle;
	vm_pindex_t pidx;
	vm_page_t page, oldm;

	if (map->mapped != true)
		return (VM_PAGER_FAIL);

	pidx = FUNC2(offset);
	if (pidx >= map->size || FUNC0(map->size, pidx, map->err))
		return (VM_PAGER_FAIL);

	page = FUNC3(map->phys_base_addr + offset);
	if (page == NULL)
		return (VM_PAGER_FAIL);

	FUNC1((page->flags & PG_FICTITIOUS) != 0,
	    ("not fictitious %p", page));
	FUNC1(FUNC9(page), ("page %p not wired", page));
	FUNC1(!FUNC4(page), ("page %p is busy", page));

	if (*mres != NULL) {
		oldm = *mres;
		FUNC6(oldm);
		*mres = NULL;
	}

	FUNC5(page, 0);
	FUNC8(page);
	FUNC7(page, object, pidx);
	*mres = page;
	return (VM_PAGER_OK);
}