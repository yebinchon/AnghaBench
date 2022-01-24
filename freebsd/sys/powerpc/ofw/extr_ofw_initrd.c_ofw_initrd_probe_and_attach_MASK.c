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
typedef  int vm_paddr_t ;
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  u_char ;
typedef  int ssize_t ;
typedef  scalar_t__ phandle_t ;
typedef  int pcell_t ;
typedef  int /*<<< orphan*/  cell ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 int FUNC1 (scalar_t__,char*,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,char*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  hw_direct_map ; 
 int /*<<< orphan*/ * mfs_root ; 
 int mfs_root_size ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

__attribute__((used)) static void
FUNC5(void *junk)
{
	phandle_t chosen;
	vm_paddr_t start, end;
	pcell_t cell[2];
	ssize_t size;

	if (!hw_direct_map)
		return;

	chosen = FUNC0("/chosen");
	if (chosen <= 0)
		return;

	if (!FUNC2(chosen, "linux,initrd-start") ||
	    !FUNC2(chosen, "linux,initrd-end"))
		return;

	size = FUNC1(chosen, "linux,initrd-start", cell, sizeof(cell));
	if (size == 4)
		start = cell[0];
	else if (size == 8)
		start = (uint64_t)cell[0] << 32 | cell[1];
	else {
		FUNC4("ofw_initrd: Wrong linux,initrd-start size\n");
		return;
	}

	size = FUNC1(chosen, "linux,initrd-end", cell, sizeof(cell));
	if (size == 4)
		end = cell[0];
	else if (size == 8)
		end = (uint64_t)cell[0] << 32 | cell[1];
	else{
		FUNC4("ofw_initrd: Wrong linux,initrd-end size\n");
		return;
	}

	if (end - start > 0) {
		mfs_root = (u_char *) FUNC3(start);
		mfs_root_size = end - start;
		FUNC4("ofw_initrd: initrd loaded at 0x%08lx-0x%08lx\n",
			start, end);
	}
}