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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint16_t ;
struct elink_reg_set {int member_1; int member_2; int reg; int val; int /*<<< orphan*/  const devad; int /*<<< orphan*/  const member_0; } ;
struct elink_phy {int /*<<< orphan*/  ver_addr; } ;
struct bxe_softc {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct elink_reg_set*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct bxe_softc*,char*) ; 
 int /*<<< orphan*/  const MDIO_CTL_DEVAD ; 
#define  MDIO_PMA_DEVAD 128 
 int /*<<< orphan*/  FUNC3 (struct bxe_softc*,struct elink_phy*,int /*<<< orphan*/  const,int,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct bxe_softc*,struct elink_phy*,int /*<<< orphan*/  const,int,int) ; 
 scalar_t__ FUNC5 (struct elink_phy*) ; 
 int /*<<< orphan*/  FUNC6 (struct bxe_softc*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct elink_phy *phy,
					    struct bxe_softc *sc,
					    uint8_t port)
{
	uint16_t val, fw_ver2, cnt, i;
	static struct elink_reg_set reg_set[] = {
		{MDIO_PMA_DEVAD, 0xA819, 0x0014},
		{MDIO_PMA_DEVAD, 0xA81A, 0xc200},
		{MDIO_PMA_DEVAD, 0xA81B, 0x0000},
		{MDIO_PMA_DEVAD, 0xA81C, 0x0300},
		{MDIO_PMA_DEVAD, 0xA817, 0x0009}
	};
	uint16_t fw_ver1;

	if (FUNC5(phy)) {
		FUNC3(sc, phy, MDIO_CTL_DEVAD, 0x400f, &fw_ver1);
		FUNC6(sc, port, fw_ver1 & 0xfff,
				phy->ver_addr);
	} else {
		/* For 32-bit registers in 848xx, access via MDIO2ARM i/f. */
		/* (1) set reg 0xc200_0014(SPI_BRIDGE_CTRL_2) to 0x03000000 */
		for (i = 0; i < FUNC0(reg_set); i++)
			FUNC4(sc, phy, reg_set[i].devad,
					 reg_set[i].reg, reg_set[i].val);

		for (cnt = 0; cnt < 100; cnt++) {
			FUNC3(sc, phy, MDIO_PMA_DEVAD, 0xA818, &val);
			if (val & 1)
				break;
			FUNC1(5);
		}
		if (cnt == 100) {
			FUNC2(sc, "Unable to read 848xx "
					"phy fw version(1)\n");
			FUNC6(sc, port, 0,
						  phy->ver_addr);
			return;
		}


		/* 2) read register 0xc200_0000 (SPI_FW_STATUS) */
		FUNC4(sc, phy, MDIO_PMA_DEVAD, 0xA819, 0x0000);
		FUNC4(sc, phy, MDIO_PMA_DEVAD, 0xA81A, 0xc200);
		FUNC4(sc, phy, MDIO_PMA_DEVAD, 0xA817, 0x000A);
		for (cnt = 0; cnt < 100; cnt++) {
			FUNC3(sc, phy, MDIO_PMA_DEVAD, 0xA818, &val);
			if (val & 1)
				break;
			FUNC1(5);
		}
		if (cnt == 100) {
			FUNC2(sc, "Unable to read 848xx phy fw "
					"version(2)\n");
			FUNC6(sc, port, 0,
						  phy->ver_addr);
			return;
		}

		/* lower 16 bits of the register SPI_FW_STATUS */
		FUNC3(sc, phy, MDIO_PMA_DEVAD, 0xA81B, &fw_ver1);
		/* upper 16 bits of register SPI_FW_STATUS */
		FUNC3(sc, phy, MDIO_PMA_DEVAD, 0xA81C, &fw_ver2);

		FUNC6(sc, port, (fw_ver2<<16) | fw_ver1,
					  phy->ver_addr);
	}

}