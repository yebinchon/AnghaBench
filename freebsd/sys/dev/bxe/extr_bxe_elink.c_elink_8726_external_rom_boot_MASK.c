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
struct elink_phy {int dummy; } ;
struct elink_params {int /*<<< orphan*/  port; struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  MDIO_PMA_DEVAD ; 
 int /*<<< orphan*/  MDIO_PMA_REG_GEN_CTRL ; 
 int MDIO_PMA_REG_GEN_CTRL_ROM_MICRO_RESET ; 
 int MDIO_PMA_REG_GEN_CTRL_ROM_RESET_INTERNAL_MP ; 
 int /*<<< orphan*/  MDIO_PMA_REG_MISC_CTRL1 ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*,struct elink_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bxe_softc*,struct elink_phy*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct elink_phy *phy,
					 struct elink_params *params)
{
	struct bxe_softc *sc = params->sc;
	/* Need to wait 100ms after reset */
	FUNC0(1000 * 100);

	/* Micro controller re-boot */
	FUNC1(sc, phy,
			 MDIO_PMA_DEVAD, MDIO_PMA_REG_GEN_CTRL, 0x018B);

	/* Set soft reset */
	FUNC1(sc, phy,
			 MDIO_PMA_DEVAD,
			 MDIO_PMA_REG_GEN_CTRL,
			 MDIO_PMA_REG_GEN_CTRL_ROM_MICRO_RESET);

	FUNC1(sc, phy,
			 MDIO_PMA_DEVAD,
			 MDIO_PMA_REG_MISC_CTRL1, 0x0001);

	FUNC1(sc, phy,
			 MDIO_PMA_DEVAD,
			 MDIO_PMA_REG_GEN_CTRL,
			 MDIO_PMA_REG_GEN_CTRL_ROM_RESET_INTERNAL_MP);

	/* Wait for 150ms for microcode load */
	FUNC0(1000 * 150);

	/* Disable serial boot control, tristates pins SS_N, SCK, MOSI, MISO */
	FUNC1(sc, phy,
			 MDIO_PMA_DEVAD,
			 MDIO_PMA_REG_MISC_CTRL1, 0x0000);

	FUNC0(1000 * 200);
	FUNC2(sc, phy, params->port);
}