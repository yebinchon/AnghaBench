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
typedef  int /*<<< orphan*/  vm_size_t ;
typedef  int /*<<< orphan*/  vm_paddr_t ;
struct resource {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  bus_space_handle_t ;

/* Variables and functions */
 int SYS_RES_IOPORT ; 
 int SYS_RES_IRQ ; 
 int SYS_RES_MEMORY ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mips_bus_space_generic ; 
 int FUNC1 (int /*<<< orphan*/ ,struct resource*) ; 
 int FUNC2 (struct resource*) ; 
 int /*<<< orphan*/  FUNC3 (struct resource*) ; 
 int /*<<< orphan*/  FUNC4 (struct resource*) ; 
 int /*<<< orphan*/  FUNC5 (struct resource*) ; 
 int /*<<< orphan*/  FUNC6 (struct resource*) ; 
 int /*<<< orphan*/  FUNC7 (struct resource*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct resource*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct resource*,void*) ; 

__attribute__((used)) static int
FUNC10(device_t bus, device_t child, int type, int rid,
    struct resource *r)
{
	void *vaddr;
	vm_paddr_t paddr;
	vm_size_t psize;
	int err;

	/*
	 * If this is a memory resource, use pmap_mapdev to map it.
	 */
	if (type == SYS_RES_MEMORY || type == SYS_RES_IOPORT) {
		paddr = FUNC6(r);
		psize = FUNC5(r);
		FUNC8(r, mips_bus_space_generic);
		err = FUNC0(FUNC4(r), paddr, psize, 0,
		    (bus_space_handle_t *)&vaddr);
		if (err != 0) {
			FUNC3(r);
			return (err);
		}
		FUNC9(r, vaddr);
		FUNC7(r, (bus_space_handle_t)(uintptr_t)vaddr);
	} else if (type == SYS_RES_IRQ) {
#ifdef INTRNG
		err = mips_pic_activate_intr(child, r);
		if (err != 0) {
			rman_deactivate_resource(r);
			return (err);
		}
#endif
	}

	return (FUNC2(r));
}