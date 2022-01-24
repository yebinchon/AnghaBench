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
 int /*<<< orphan*/  NAE_FLOW_BASEMASK_CFG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void
FUNC1(uint64_t nae_base, int port,
    uint32_t cur_flow_base, uint32_t flow_mask)
{
	uint32_t val;

	val = (cur_flow_base << 16) | port;
	val |= ((flow_mask & 0x1f) << 8);
	FUNC0(nae_base, NAE_FLOW_BASEMASK_CFG, val);
}