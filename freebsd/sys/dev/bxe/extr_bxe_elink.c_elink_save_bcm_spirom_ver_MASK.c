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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int uint16_t ;
struct elink_phy {int /*<<< orphan*/  ver_addr; } ;
struct bxe_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MDIO_PMA_DEVAD ; 
 int /*<<< orphan*/  MDIO_PMA_REG_ROM_VER1 ; 
 int /*<<< orphan*/  MDIO_PMA_REG_ROM_VER2 ; 
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,struct elink_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct bxe_softc *sc,
				      struct elink_phy *phy,
				      uint8_t port)
{
	uint16_t fw_ver1, fw_ver2;

	FUNC0(sc, phy, MDIO_PMA_DEVAD,
			MDIO_PMA_REG_ROM_VER1, &fw_ver1);
	FUNC0(sc, phy, MDIO_PMA_DEVAD,
			MDIO_PMA_REG_ROM_VER2, &fw_ver2);
	FUNC1(sc, port, (uint32_t)(fw_ver1<<16 | fw_ver2),
				  phy->ver_addr);
}