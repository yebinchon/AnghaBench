#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_long ;
struct TYPE_2__ {int /*<<< orphan*/  ic_linesize; int /*<<< orphan*/  ic_size; int /*<<< orphan*/  dc_linesize; int /*<<< orphan*/  dc_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASI_DCACHE_TAG ; 
 int /*<<< orphan*/  ASI_ICACHE_TAG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__ cache ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC2(void)
{
	u_long addr;

	for (addr = 0; addr < FUNC0(cache.dc_size);
	    addr += FUNC0(cache.dc_linesize))
		FUNC1(addr, ASI_DCACHE_TAG, 0);
	for (addr = 0; addr < FUNC0(cache.ic_size);
	    addr += FUNC0(cache.ic_linesize))
		FUNC1(addr, ASI_ICACHE_TAG, 0);
}