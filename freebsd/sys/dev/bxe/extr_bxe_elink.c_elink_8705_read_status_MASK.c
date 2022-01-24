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
typedef  int uint8_t ;
typedef  int uint16_t ;
struct elink_vars {int /*<<< orphan*/  line_speed; } ;
struct elink_phy {int dummy; } ;
struct elink_params {struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*,char*,int) ; 
 int /*<<< orphan*/  ELINK_SPEED_10000 ; 
 int /*<<< orphan*/  MDIO_PMA_DEVAD ; 
 int MDIO_PMA_REG_RX_SD ; 
 int /*<<< orphan*/  MDIO_WIS_DEVAD ; 
 int MDIO_WIS_REG_LASI_STATUS ; 
 int /*<<< orphan*/  FUNC2 (struct bxe_softc*,struct elink_phy*,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct elink_phy*,struct elink_params*,struct elink_vars*) ; 

__attribute__((used)) static uint8_t FUNC4(struct elink_phy *phy,
				 struct elink_params *params,
				 struct elink_vars *vars)
{
	uint8_t link_up = 0;
	uint16_t val1, rx_sd;
	struct bxe_softc *sc = params->sc;
	FUNC0(sc, "read status 8705\n");
	FUNC2(sc, phy,
		      MDIO_WIS_DEVAD, MDIO_WIS_REG_LASI_STATUS, &val1);
	FUNC1(sc, "8705 LASI status 0x%x\n", val1);

	FUNC2(sc, phy,
		      MDIO_WIS_DEVAD, MDIO_WIS_REG_LASI_STATUS, &val1);
	FUNC1(sc, "8705 LASI status 0x%x\n", val1);

	FUNC2(sc, phy,
		      MDIO_PMA_DEVAD, MDIO_PMA_REG_RX_SD, &rx_sd);

	FUNC2(sc, phy,
		      MDIO_PMA_DEVAD, 0xc809, &val1);
	FUNC2(sc, phy,
		      MDIO_PMA_DEVAD, 0xc809, &val1);

	FUNC1(sc, "8705 1.c809 val=0x%x\n", val1);
	link_up = ((rx_sd & 0x1) && (val1 & (1<<9)) && ((val1 & (1<<8)) == 0));
	if (link_up) {
		vars->line_speed = ELINK_SPEED_10000;
		FUNC3(phy, params, vars);
	}
	return link_up;
}