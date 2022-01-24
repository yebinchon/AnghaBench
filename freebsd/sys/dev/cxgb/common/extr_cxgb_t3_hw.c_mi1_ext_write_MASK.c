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
typedef  unsigned int u32 ;
typedef  int /*<<< orphan*/  adapter_t ;

/* Variables and functions */
 int /*<<< orphan*/  A_MI1_ADDR ; 
 int /*<<< orphan*/  A_MI1_CFG ; 
 int /*<<< orphan*/  A_MI1_DATA ; 
 int /*<<< orphan*/  A_MI1_OP ; 
 int /*<<< orphan*/  F_BUSY ; 
 int /*<<< orphan*/  MDIO_ATTEMPTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  M_ST ; 
 unsigned int FUNC2 (int) ; 
 unsigned int FUNC3 (int) ; 
 unsigned int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC9(adapter_t *adapter, int phy_addr, int mmd_addr,
			 int reg_addr, unsigned int val)
{
	int ret;
	u32 addr = FUNC4(mmd_addr) | FUNC3(phy_addr);

	FUNC0(adapter);
	FUNC6(adapter, A_MI1_CFG, FUNC5(M_ST), 0);
	FUNC8(adapter, A_MI1_ADDR, addr);
	FUNC8(adapter, A_MI1_DATA, reg_addr);
	FUNC8(adapter, A_MI1_OP, FUNC2(0));
	ret = FUNC7(adapter, A_MI1_OP, F_BUSY, 0, MDIO_ATTEMPTS, 10);
	if (!ret) {
		FUNC8(adapter, A_MI1_DATA, val);
		FUNC8(adapter, A_MI1_OP, FUNC2(1));
		ret = FUNC7(adapter, A_MI1_OP, F_BUSY, 0,
				      MDIO_ATTEMPTS, 10);
	}
	FUNC1(adapter);
	return ret;
}