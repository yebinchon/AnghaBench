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
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_CIM_BOOT_CFG ; 
 int /*<<< orphan*/  A_PCIE_FW ; 
 int ETIMEDOUT ; 
 int FW_CMD_MAX_TIMEOUT ; 
 int FW_SUCCESS ; 
 int F_PCIE_FW_HALT ; 
 int /*<<< orphan*/  F_UPCRST ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC3(struct adapter *adap, unsigned int mbox)
{
	int ms;

	FUNC2(adap, A_CIM_BOOT_CFG, F_UPCRST, 0);
	for (ms = 0; ms < FW_CMD_MAX_TIMEOUT; ) {
		if (!(FUNC1(adap, A_PCIE_FW) & F_PCIE_FW_HALT))
			return FW_SUCCESS;
		FUNC0(100);
		ms += 100;
	}

	return -ETIMEDOUT;
}