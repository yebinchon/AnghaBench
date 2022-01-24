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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void
FUNC2(uint64_t base, int nblock, int iface, int port_type,
    int broadcast_en, int multicast_en, int pause_en, int promisc_en)
{
	uint32_t val;

	val = ((broadcast_en & 0x1) << 10)  |
	    ((pause_en & 0x1) << 9)     |
	    ((multicast_en & 0x1) << 8) |
	    ((promisc_en & 0x1) << 7)   | /* unicast_enable - enables promisc mode */
	    1; /* MAC address is always valid */

	FUNC1(base, FUNC0(nblock), val);
}