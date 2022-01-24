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
struct elink_vars {int dummy; } ;
struct elink_phy {int (* read_status ) (struct elink_phy*,struct elink_params*,struct elink_vars*) ;int /*<<< orphan*/  media_type; } ;
struct elink_params {scalar_t__* req_line_speed; scalar_t__ loopback_mode; int num_phys; struct elink_phy* phy; struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;
typedef  int /*<<< orphan*/  elink_status_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bxe_softc*) ; 
 scalar_t__ FUNC1 (struct bxe_softc*) ; 
 scalar_t__ FUNC2 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct bxe_softc*,struct elink_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  ELINK_ETH_PHY_DA_TWINAX ; 
 int /*<<< orphan*/  ELINK_ETH_PHY_SFPP_10G_FIBER ; 
 int /*<<< orphan*/  ELINK_ETH_PHY_SFP_1G_FIBER ; 
 int /*<<< orphan*/  ELINK_ETH_PHY_XFP_FIBER ; 
 size_t ELINK_EXT_PHY1 ; 
 size_t ELINK_INT_PHY ; 
 size_t FUNC4 (size_t) ; 
 scalar_t__ ELINK_LOOPBACK_XGXS ; 
 scalar_t__ ELINK_SPEED_10000 ; 
 int /*<<< orphan*/  ELINK_STATUS_NO_LINK ; 
 int /*<<< orphan*/  ELINK_STATUS_OK ; 
 int /*<<< orphan*/  MDIO_GP_STATUS_TOP_AN_STATUS1 ; 
 int MDIO_GP_STATUS_TOP_AN_STATUS1_LINK_STATUS ; 
 int /*<<< orphan*/  MDIO_REG_BANK_GP_STATUS ; 
 int /*<<< orphan*/  MDIO_WC_DEVAD ; 
 int MDIO_WC_REG_GP2_STATUS_GP_2_1 ; 
 int /*<<< orphan*/  FUNC5 (struct bxe_softc*,struct elink_phy*,int /*<<< orphan*/ ,int,int*) ; 
 int FUNC6 (struct elink_phy*,struct elink_params*) ; 
 int FUNC7 (struct elink_phy*,struct elink_params*,struct elink_vars*) ; 
 int FUNC8 (struct elink_phy*,struct elink_params*,struct elink_vars*) ; 

elink_status_t FUNC9(struct elink_params *params, struct elink_vars *vars,
		    uint8_t is_serdes)
{
	struct bxe_softc *sc = params->sc;
	uint16_t gp_status = 0, phy_index = 0;
	uint8_t ext_phy_link_up = 0, serdes_phy_type;
	struct elink_vars temp_vars;
	struct elink_phy *int_phy = &params->phy[ELINK_INT_PHY];
#ifdef ELINK_INCLUDE_FPGA
	if (CHIP_REV_IS_FPGA(sc))
		return ELINK_STATUS_OK;
#endif
#ifdef ELINK_INCLUDE_EMUL
	if (CHIP_REV_IS_EMUL(sc))
		return ELINK_STATUS_OK;
#endif

	if (FUNC0(sc)) {
		uint16_t link_up;
		if (params->req_line_speed[FUNC4(ELINK_INT_PHY)]
		    > ELINK_SPEED_10000) {
			/* Check 20G link */
			FUNC5(sc, int_phy, MDIO_WC_DEVAD,
					1, &link_up);
			FUNC5(sc, int_phy, MDIO_WC_DEVAD,
					1, &link_up);
			link_up &= (1<<2);
		} else {
			/* Check 10G link and below*/
			uint8_t lane = FUNC6(int_phy, params);
			FUNC5(sc, int_phy, MDIO_WC_DEVAD,
					MDIO_WC_REG_GP2_STATUS_GP_2_1,
					&gp_status);
			gp_status = ((gp_status >> 8) & 0xf) |
				((gp_status >> 12) & 0xf);
			link_up = gp_status & (1 << lane);
		}
		if (!link_up)
			return ELINK_STATUS_NO_LINK;
	} else {
		FUNC3(sc, int_phy,
			  MDIO_REG_BANK_GP_STATUS,
			  MDIO_GP_STATUS_TOP_AN_STATUS1,
			  &gp_status);
	/* Link is up only if both local phy and external phy are up */
	if (!(gp_status & MDIO_GP_STATUS_TOP_AN_STATUS1_LINK_STATUS))
		return ELINK_STATUS_NO_LINK;
	}
	/* In XGXS loopback mode, do not check external PHY */
	if (params->loopback_mode == ELINK_LOOPBACK_XGXS)
		return ELINK_STATUS_OK;

	switch (params->num_phys) {
	case 1:
		/* No external PHY */
		return ELINK_STATUS_OK;
	case 2:
		ext_phy_link_up = params->phy[ELINK_EXT_PHY1].read_status(
			&params->phy[ELINK_EXT_PHY1],
			params, &temp_vars);
		break;
	case 3: /* Dual Media */
		for (phy_index = ELINK_EXT_PHY1; phy_index < params->num_phys;
		      phy_index++) {
			serdes_phy_type = ((params->phy[phy_index].media_type ==
					    ELINK_ETH_PHY_SFPP_10G_FIBER) ||
					   (params->phy[phy_index].media_type ==
					    ELINK_ETH_PHY_SFP_1G_FIBER) ||
					   (params->phy[phy_index].media_type ==
					    ELINK_ETH_PHY_XFP_FIBER) ||
					   (params->phy[phy_index].media_type ==
					    ELINK_ETH_PHY_DA_TWINAX));

			if (is_serdes != serdes_phy_type)
				continue;
			if (params->phy[phy_index].read_status) {
				ext_phy_link_up |=
					params->phy[phy_index].read_status(
						&params->phy[phy_index],
						params, &temp_vars);
			}
		}
		break;
	}
	if (ext_phy_link_up)
		return ELINK_STATUS_OK;
	return ELINK_STATUS_NO_LINK;
}