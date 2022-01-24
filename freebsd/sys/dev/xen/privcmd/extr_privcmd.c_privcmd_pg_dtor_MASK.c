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
typedef  scalar_t__ vm_size_t ;
typedef  int /*<<< orphan*/ * vm_page_t ;
struct xen_remove_from_physmap {scalar_t__ gpfn; int /*<<< orphan*/  domid; } ;
struct privcmd_map {int mapped; scalar_t__ size; int /*<<< orphan*/  pseudo_phys_res; int /*<<< orphan*/  pseudo_phys_res_id; struct privcmd_map* err; int /*<<< orphan*/  phys_base_addr; int /*<<< orphan*/  mem; } ;

/* Variables and functions */
 int /*<<< orphan*/  DOMID_SELF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct xen_remove_from_physmap*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  M_PRIVCMD ; 
 int /*<<< orphan*/  VM_ALLOC_WAITFAIL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XENMEM_remove_from_physmap ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct privcmd_map*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  privcmd_dev ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10(void *handle)
{
	struct xen_remove_from_physmap rm = { .domid = DOMID_SELF };
	struct privcmd_map *map = handle;
	int error;
	vm_size_t i;
	vm_page_t m;

	/*
	 * Remove the mappings from the used pages. This will remove the
	 * underlying p2m bindings in Xen second stage translation.
	 */
	if (map->mapped == true) {
		FUNC2(map->mem);
retry:
		for (i = 0; i < map->size; i++) {
			m = FUNC8(map->mem, i);
			if (m == NULL)
				continue;
			if (FUNC7(m, VM_ALLOC_WAITFAIL) == 0)
				goto retry;
			FUNC5(map->mem, m);
		}
		FUNC3(map->mem);

		for (i = 0; i < map->size; i++) {
			rm.gpfn = FUNC4(map->phys_base_addr) + i;
			FUNC0(XENMEM_remove_from_physmap, &rm);
		}
		FUNC6(map->err, M_PRIVCMD);
	}

	error = FUNC9(privcmd_dev, map->pseudo_phys_res_id,
	    map->pseudo_phys_res);
	FUNC1(error == 0, ("Unable to release memory resource: %d", error));

	FUNC6(map, M_PRIVCMD);
}