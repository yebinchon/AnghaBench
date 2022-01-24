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

/* Variables and functions */
 int AR5315_AHB_ERROR_DET ; 
 int AR5315_ARB_ENET ; 
 scalar_t__ AR5315_SYSREG_AHB_ARB_CTL ; 
 scalar_t__ AR5315_SYSREG_AHB_ERR0 ; 
 scalar_t__ AR5315_SYSREG_AHB_ERR1 ; 
 scalar_t__ AR5315_SYSREG_BASE ; 
 scalar_t__ AR5315_SYSREG_ENDIAN ; 
 scalar_t__ AR5315_SYSREG_GPIO_INT ; 
 scalar_t__ AR5315_SYSREG_WDOG_CTL ; 
 int AR5315_WDOG_CTL_IGNORE ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

__attribute__((used)) static void
FUNC3(void)
{
	FUNC1(AR5315_SYSREG_BASE+AR5315_SYSREG_AHB_ERR0,
		AR5315_AHB_ERROR_DET);
	FUNC0(AR5315_SYSREG_BASE+AR5315_SYSREG_AHB_ERR1);
	FUNC1(AR5315_SYSREG_BASE+AR5315_SYSREG_WDOG_CTL, 
		AR5315_WDOG_CTL_IGNORE);

	// set Ethernet AHB master arbitration control
	// Maybe RedBoot was enabled. But to make sure.
	FUNC1(AR5315_SYSREG_BASE+AR5315_SYSREG_AHB_ARB_CTL,
		FUNC0(AR5315_SYSREG_BASE+AR5315_SYSREG_AHB_ARB_CTL) |
		AR5315_ARB_ENET);
	
	// set Ethernet controller byteswap control
/*
	ATH_WRITE_REG(AR5315_SYSREG_BASE+AR5315_SYSREG_ENDIAN,
		ATH_READ_REG(AR5315_SYSREG_BASE+AR5315_SYSREG_ENDIAN) |
		AR5315_ENDIAN_ENET);
*/
	/* Disable interrupts for all gpio pins. */
	FUNC1(AR5315_SYSREG_BASE+AR5315_SYSREG_GPIO_INT, 0);

	FUNC2("AHB Master Arbitration Control %08x\n",
		FUNC0(AR5315_SYSREG_BASE+AR5315_SYSREG_AHB_ARB_CTL));
	FUNC2("Byteswap Control %08x\n",
		FUNC0(AR5315_SYSREG_BASE+AR5315_SYSREG_ENDIAN));
}