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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_MAC_PORT_CFG2 ; 
 int /*<<< orphan*/  A_MAC_PORT_MAGIC_MACID_HI ; 
 int /*<<< orphan*/  A_MAC_PORT_MAGIC_MACID_LO ; 
 int /*<<< orphan*/  A_XGMAC_PORT_CFG2 ; 
 int /*<<< orphan*/  A_XGMAC_PORT_MAGIC_MACID_HI ; 
 int /*<<< orphan*/  A_XGMAC_PORT_MAGIC_MACID_LO ; 
 int /*<<< orphan*/  F_MAGICEN ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct adapter*,int /*<<< orphan*/ ,int const) ; 

void FUNC6(struct adapter *adap, unsigned int port,
			 const u8 *addr)
{
	u32 mag_id_reg_l, mag_id_reg_h, port_cfg_reg;

	if (FUNC3(adap)) {
		mag_id_reg_l = FUNC0(port, A_XGMAC_PORT_MAGIC_MACID_LO);
		mag_id_reg_h = FUNC0(port, A_XGMAC_PORT_MAGIC_MACID_HI);
		port_cfg_reg = FUNC0(port, A_XGMAC_PORT_CFG2);
	} else {
		mag_id_reg_l = FUNC1(port, A_MAC_PORT_MAGIC_MACID_LO);
		mag_id_reg_h = FUNC1(port, A_MAC_PORT_MAGIC_MACID_HI);
		port_cfg_reg = FUNC1(port, A_MAC_PORT_CFG2);
	}

	if (addr) {
		FUNC5(adap, mag_id_reg_l,
			     (addr[2] << 24) | (addr[3] << 16) |
			     (addr[4] << 8) | addr[5]);
		FUNC5(adap, mag_id_reg_h,
			     (addr[0] << 8) | addr[1]);
	}
	FUNC4(adap, port_cfg_reg, F_MAGICEN,
			 FUNC2(addr != NULL));
}