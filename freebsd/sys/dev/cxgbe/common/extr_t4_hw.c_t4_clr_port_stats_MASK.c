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
typedef  int u32 ;
struct adapter {int dummy; } ;
struct TYPE_2__ {int mps_bg_map; } ;

/* Variables and functions */
 unsigned int A_MPS_PORT_STAT_RX_PORT_BYTES_L ; 
 unsigned int A_MPS_PORT_STAT_RX_PORT_LESS_64B_H ; 
 unsigned int A_MPS_PORT_STAT_TX_PORT_BYTES_L ; 
 unsigned int A_MPS_PORT_STAT_TX_PORT_PPP7_H ; 
 int A_MPS_STAT_RX_BG_0_MAC_DROP_FRAME_L ; 
 int A_MPS_STAT_RX_BG_0_MAC_TRUNC_FRAME_L ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 TYPE_1__* FUNC2 (struct adapter*,int) ; 
 scalar_t__ FUNC3 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct adapter*,int,int /*<<< orphan*/ ) ; 

void FUNC5(struct adapter *adap, int idx)
{
	unsigned int i;
	u32 bgmap = FUNC2(adap, idx)->mps_bg_map;
	u32 port_base_addr;

	if (FUNC3(adap))
		port_base_addr = FUNC0(idx);
	else
		port_base_addr = FUNC1(idx);

	for (i = A_MPS_PORT_STAT_TX_PORT_BYTES_L;
			i <= A_MPS_PORT_STAT_TX_PORT_PPP7_H; i += 8)
		FUNC4(adap, port_base_addr + i, 0);
	for (i = A_MPS_PORT_STAT_RX_PORT_BYTES_L;
			i <= A_MPS_PORT_STAT_RX_PORT_LESS_64B_H; i += 8)
		FUNC4(adap, port_base_addr + i, 0);
	for (i = 0; i < 4; i++)
		if (bgmap & (1 << i)) {
			FUNC4(adap,
			A_MPS_STAT_RX_BG_0_MAC_DROP_FRAME_L + i * 8, 0);
			FUNC4(adap,
			A_MPS_STAT_RX_BG_0_MAC_TRUNC_FRAME_L + i * 8, 0);
		}
}