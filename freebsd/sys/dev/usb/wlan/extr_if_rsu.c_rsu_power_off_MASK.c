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
struct rsu_softc {int dummy; } ;

/* Variables and functions */
 scalar_t__ R92S_AFE_MISC ; 
 scalar_t__ R92S_AFE_PLL_CTRL ; 
 scalar_t__ R92S_LDOA15_CTRL ; 
 scalar_t__ R92S_LDOV12D_CTRL ; 
 scalar_t__ R92S_PMC_FSM ; 
 scalar_t__ R92S_RF_CTRL ; 
 scalar_t__ R92S_SPS0_CTRL ; 
 scalar_t__ R92S_SYS_CLKR ; 
 scalar_t__ R92S_SYS_FUNC_EN ; 
 scalar_t__ R92S_SYS_ISO_CTRL ; 
 int /*<<< orphan*/  RSU_PWR_OFF ; 
 int /*<<< orphan*/  FUNC0 (struct rsu_softc*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rsu_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rsu_softc*,scalar_t__,int) ; 

__attribute__((used)) static void
FUNC3(struct rsu_softc *sc)
{
	/* Turn RF off. */
	FUNC2(sc, R92S_RF_CTRL, 0x00);
	FUNC0(sc, 5);

	/* Turn MAC off. */
	/* Switch control path. */
	FUNC2(sc, R92S_SYS_CLKR + 1, 0x38);
	/* Reset MACTOP. */
	FUNC2(sc, R92S_SYS_FUNC_EN + 1, 0x70);
	FUNC2(sc, R92S_PMC_FSM, 0x06);
	FUNC2(sc, R92S_SYS_ISO_CTRL + 0, 0xf9);
	FUNC2(sc, R92S_SYS_ISO_CTRL + 1, 0xe8);

	/* Disable AFE PLL. */
	FUNC2(sc, R92S_AFE_PLL_CTRL, 0x00);
	/* Disable A15V. */
	FUNC2(sc, R92S_LDOA15_CTRL, 0x54);
	/* Disable eFuse 1.2V. */
	FUNC2(sc, R92S_SYS_FUNC_EN + 1, 0x50);
	FUNC2(sc, R92S_LDOV12D_CTRL, 0x24);
	/* Enable AFE macro block's bandgap and Mbias. */
	FUNC2(sc, R92S_AFE_MISC, 0x30);
	/* Disable 1.6V LDO. */
	FUNC2(sc, R92S_SPS0_CTRL + 0, 0x56);
	FUNC2(sc, R92S_SPS0_CTRL + 1, 0x43);

	/* Firmware - tell it to switch things off */
	(void) FUNC1(sc, RSU_PWR_OFF);
}