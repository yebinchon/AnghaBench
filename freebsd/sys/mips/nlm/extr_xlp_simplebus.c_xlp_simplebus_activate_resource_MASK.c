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
 int SYS_RES_MEMORY ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct resource*) ; 
 int /*<<< orphan*/  FUNC2 (struct resource*) ; 
 int /*<<< orphan*/  FUNC3 (struct resource*) ; 
 int /*<<< orphan*/  FUNC4 (struct resource*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct resource*,void*) ; 

__attribute__((used)) static int
FUNC6(device_t bus, device_t child, int type, int rid,
    struct resource *r)
{
	void *vaddr;
	vm_paddr_t paddr;
	vm_size_t psize;

	/*
	 * If this is a memory resource, use pmap_mapdev to map it.
	 */
	if (type == SYS_RES_MEMORY || type == SYS_RES_IOPORT) {
		paddr = FUNC3(r);
		psize = FUNC2(r);
		vaddr = FUNC0(paddr, psize);

		FUNC5(r, vaddr);
		FUNC4(r, (bus_space_handle_t)(uintptr_t)vaddr);
	}

	return (FUNC1(r));
}