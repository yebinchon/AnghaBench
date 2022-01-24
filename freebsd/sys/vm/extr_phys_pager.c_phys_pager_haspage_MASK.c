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
typedef  int vm_pindex_t ;
typedef  int /*<<< orphan*/  vm_object_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 int phys_pager_cluster ; 
 int FUNC0 (int,int) ; 

__attribute__((used)) static boolean_t
FUNC1(vm_object_t object, vm_pindex_t pindex, int *before,
    int *after)
{
	vm_pindex_t base, end;

	base = FUNC0(pindex, phys_pager_cluster);
	end = base + phys_pager_cluster - 1;
	if (before != NULL)
		*before = pindex - base;
	if (after != NULL)
		*after = end - pindex;
	return (TRUE);
}