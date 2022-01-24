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
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  void* u_long ;
typedef  int phandle_t ;

/* Variables and functions */
 int ENXIO ; 
 int FUNC0 (char*) ; 
 int FUNC1 (int,char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int,int /*<<< orphan*/ ,void**,void**) ; 
 void* fdt_immr_pa ; 
 void* fdt_immr_size ; 
 int /*<<< orphan*/  fdt_immr_va ; 
 scalar_t__ FUNC3 (int,char*) ; 

int
FUNC4(vm_offset_t immr_va)
{
	phandle_t node;
	u_long base, size;
	int r;

	/*
	 * Try to access the SOC node directly i.e. through /aliases/.
	 */
	if ((node = FUNC0("soc")) != -1)
		if (FUNC3(node, "simple-bus"))
			goto moveon;
	/*
	 * Find the node the long way.
	 */
	if ((node = FUNC0("/")) == -1)
		return (ENXIO);

	if ((node = FUNC1(node, "simple-bus", 0)) == 0)
		return (ENXIO);

moveon:
	if ((r = FUNC2(node, 0, &base, &size)) == 0) {
		fdt_immr_pa = base;
		fdt_immr_va = immr_va;
		fdt_immr_size = size;
	}

	return (r);
}