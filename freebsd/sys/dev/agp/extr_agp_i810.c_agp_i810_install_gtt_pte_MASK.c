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
typedef  scalar_t__ vm_offset_t ;
typedef  int uint32_t ;
typedef  int u_int32_t ;
typedef  int /*<<< orphan*/  u_int ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int AGP_DCACHE_MEMORY ; 
 int AGP_USER_CACHED_MEMORY ; 
 int I810_PTE_LOCAL ; 
 int I810_PTE_VALID ; 
 int I830_PTE_SYSTEM_CACHED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC1(device_t dev, u_int index, vm_offset_t physical,
    int flags)
{
	uint32_t pte;

	pte = (u_int32_t)physical | I810_PTE_VALID;
	if (flags == AGP_DCACHE_MEMORY)
		pte |= I810_PTE_LOCAL;
	else if (flags == AGP_USER_CACHED_MEMORY)
		pte |= I830_PTE_SYSTEM_CACHED;
	FUNC0(dev, index, pte);
}