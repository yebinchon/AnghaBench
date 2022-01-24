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
typedef  int /*<<< orphan*/  vmem_t ;
typedef  scalar_t__ vm_offset_t ;
typedef  int uintmax_t ;
typedef  int u_long ;

/* Variables and functions */
 int M_BESTFIT ; 
 int M_WAITOK ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  memguard_arena ; 
 scalar_t__ memguard_base ; 
 scalar_t__ memguard_mapsize ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void
FUNC3(vmem_t *parent)
{
	vm_offset_t base;

	FUNC1(parent, memguard_mapsize, M_BESTFIT | M_WAITOK, &base);
	FUNC2(memguard_arena, "memguard arena", base, memguard_mapsize,
	    PAGE_SIZE, 0, M_WAITOK);
	memguard_base = base;

	FUNC0("MEMGUARD DEBUGGING ALLOCATOR INITIALIZED:\n");
	FUNC0("\tMEMGUARD map base: 0x%lx\n", (u_long)base);
	FUNC0("\tMEMGUARD map size: %jd KBytes\n",
	    (uintmax_t)memguard_mapsize >> 10);
}