#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_3__ {int /*<<< orphan*/  rval; void* raddr; void* paddr_mmd; } ;
struct TYPE_4__ {TYPE_1__ mdio; } ;
struct fw_ldst_cmd {TYPE_2__ u; void* cycles_to_len16; void* op_to_addrspace; } ;
struct adapter {int dummy; } ;
typedef  int /*<<< orphan*/  c ;

/* Variables and functions */
 int /*<<< orphan*/  FW_LDST_ADDRSPC_MDIO ; 
 int /*<<< orphan*/  FW_LDST_CMD ; 
 int FUNC0 (struct fw_ldst_cmd) ; 
 int F_FW_CMD_READ ; 
 int F_FW_CMD_REQUEST ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (unsigned int) ; 
 unsigned int FUNC4 (unsigned int) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ) ; 
 void* FUNC6 (unsigned int) ; 
 void* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct fw_ldst_cmd*,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (struct adapter*,unsigned int,struct fw_ldst_cmd*,int,struct fw_ldst_cmd*) ; 

int FUNC10(struct adapter *adap, unsigned int mbox, unsigned int phy_addr,
	       unsigned int mmd, unsigned int reg, unsigned int *valp)
{
	int ret;
	u32 ldst_addrspace;
	struct fw_ldst_cmd c;

	FUNC8(&c, 0, sizeof(c));
	ldst_addrspace = FUNC2(FW_LDST_ADDRSPC_MDIO);
	c.op_to_addrspace = FUNC7(FUNC1(FW_LDST_CMD) |
					F_FW_CMD_REQUEST | F_FW_CMD_READ |
					ldst_addrspace);
	c.cycles_to_len16 = FUNC7(FUNC0(c));
	c.u.mdio.paddr_mmd = FUNC6(FUNC4(phy_addr) |
					 FUNC3(mmd));
	c.u.mdio.raddr = FUNC6(reg);

	ret = FUNC9(adap, mbox, &c, sizeof(c), &c);
	if (ret == 0)
		*valp = FUNC5(c.u.mdio.rval);
	return ret;
}