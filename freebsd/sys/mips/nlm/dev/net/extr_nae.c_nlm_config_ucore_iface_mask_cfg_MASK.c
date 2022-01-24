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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  NAE_UCORE_IFACEMASK_CFG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void
FUNC1(uint64_t nae_base, int port,
    int nblock_ucore_mask)
{
	uint32_t val;

	val = ( 0x1U << 31) | ((nblock_ucore_mask & 0xffff) << 8) |
	    (port & 0x1f);
	FUNC0(nae_base, NAE_UCORE_IFACEMASK_CFG, val);
}