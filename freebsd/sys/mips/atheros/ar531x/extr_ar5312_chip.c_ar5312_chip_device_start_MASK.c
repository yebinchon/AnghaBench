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
typedef  int uint32_t ;

/* Variables and functions */
 int AR5312_ENABLE_ENET0 ; 
 int AR5312_ENABLE_ENET1 ; 
 int /*<<< orphan*/  AR5312_MEM_CFG1_BANK0 ; 
 int /*<<< orphan*/  AR5312_MEM_CFG1_BANK1 ; 
 scalar_t__ AR5312_SDRAMCTL_BASE ; 
 scalar_t__ AR5312_SDRAMCTL_MEM_CFG0 ; 
 scalar_t__ AR5312_SDRAMCTL_MEM_CFG1 ; 
 scalar_t__ AR5312_SYSREG_AHBDMAE ; 
 scalar_t__ AR5312_SYSREG_AHBPERR ; 
 scalar_t__ AR5312_SYSREG_BASE ; 
 scalar_t__ AR5312_SYSREG_ENABLE ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 int FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int,int,int) ; 

__attribute__((used)) static void
FUNC4(void)
{
	uint32_t cfg0, cfg1;
	uint32_t bank0, bank1;
	uint32_t size0, size1;

	cfg0 = FUNC0(AR5312_SDRAMCTL_BASE + AR5312_SDRAMCTL_MEM_CFG0);
	cfg1 = FUNC0(AR5312_SDRAMCTL_BASE + AR5312_SDRAMCTL_MEM_CFG1);

	bank0 = FUNC2(cfg1, AR5312_MEM_CFG1_BANK0);
	bank1 = FUNC2(cfg1, AR5312_MEM_CFG1_BANK1);

	size0 = bank0 ? (1 << (bank0 + 1)) : 0;
	size1 = bank1 ? (1 << (bank1 + 1)) : 0;

	size0 <<= 20;
	size1 <<= 20;

	FUNC3("SDRMCTL %x %x %x %x\n", cfg0, cfg1, size0, size1);

	FUNC0(AR5312_SYSREG_BASE + AR5312_SYSREG_AHBPERR);
	FUNC0(AR5312_SYSREG_BASE + AR5312_SYSREG_AHBDMAE);
//	ATH_WRITE_REG(AR5312_SYSREG_BASE + AR5312_SYSREG_WDOG_CTL, 0);
	FUNC1(AR5312_SYSREG_BASE + AR5312_SYSREG_ENABLE, 0);

	FUNC1(AR5312_SYSREG_BASE+AR5312_SYSREG_ENABLE,
		FUNC0(AR5312_SYSREG_BASE+AR5312_SYSREG_ENABLE) |
		AR5312_ENABLE_ENET0 | AR5312_ENABLE_ENET1);

}