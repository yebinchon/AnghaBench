#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  scalar_t__ uint32_t ;
struct elink_vars {int eee_status; scalar_t__ phy_flags; scalar_t__ link_up; scalar_t__ link_status; } ;
struct elink_params {int port; int feature_config_flags; int num_phys; TYPE_1__* phy; int /*<<< orphan*/  chip_id; struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;
typedef  int /*<<< orphan*/  elink_status_t ;
struct TYPE_4__ {int flags; int /*<<< orphan*/  (* link_reset ) (TYPE_1__*,struct elink_params*) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct bxe_softc*,char*,int) ; 
 int ELINK_EXT_PHY1 ; 
 int ELINK_FEATURE_CONFIG_EMUL_DISABLE_BMAC ; 
 int ELINK_FEATURE_CONFIG_EMUL_DISABLE_XMAC ; 
 int ELINK_FLAGS_REARM_LATCH_SIGNAL ; 
 size_t ELINK_INT_PHY ; 
 int /*<<< orphan*/  ELINK_LED_MODE_OFF ; 
 int ELINK_NIG_LATCH_BC_ENABLE_MI_INT ; 
 int ELINK_NIG_MASK_MI_INT ; 
 int ELINK_NIG_MASK_SERDES0_LINK_STATUS ; 
 int ELINK_NIG_MASK_XGXS0_LINK10G ; 
 int ELINK_NIG_MASK_XGXS0_LINK_STATUS ; 
 int /*<<< orphan*/  ELINK_STATUS_OK ; 
 scalar_t__ GRCBASE_MISC ; 
 scalar_t__ GRCBASE_XMAC0 ; 
 scalar_t__ GRCBASE_XMAC1 ; 
 scalar_t__ MISC_REGISTERS_RESET_REG_2_CLEAR ; 
 int MISC_REGISTERS_RESET_REG_2_RST_BMAC0 ; 
 int MISC_REGISTERS_RESET_REG_2_XMAC ; 
 int /*<<< orphan*/  MISC_REG_RESET_REG_2 ; 
 scalar_t__ NIG_REG_BMAC0_IN_EN ; 
 scalar_t__ NIG_REG_BMAC0_OUT_EN ; 
 scalar_t__ NIG_REG_EGRESS_DRAIN0_MODE ; 
 scalar_t__ NIG_REG_EGRESS_EMAC0_OUT_EN ; 
 scalar_t__ NIG_REG_EMAC0_IN_EN ; 
 scalar_t__ NIG_REG_LATCH_BC_0 ; 
 scalar_t__ NIG_REG_MASK_INTERRUPT_PORT0 ; 
 scalar_t__ NIG_REG_NIG_EMAC0_EN ; 
 int FUNC5 (struct bxe_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct bxe_softc*,scalar_t__,int) ; 
 int SHMEM_EEE_ACTIVE_BIT ; 
 int SHMEM_EEE_LP_ADV_STATUS_MASK ; 
 int XMAC_CTRL_REG_SOFT_RESET ; 
 scalar_t__ XMAC_REG_CTRL ; 
 int /*<<< orphan*/  FUNC7 (struct bxe_softc*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC8 (struct elink_params*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct bxe_softc*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct elink_params*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (struct bxe_softc*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct elink_params*,struct elink_vars*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct bxe_softc*,struct elink_params*) ; 
 int /*<<< orphan*/  FUNC14 (struct elink_params*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct elink_params*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct elink_params*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct elink_params*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (struct elink_params*,int) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*,struct elink_params*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__*,struct elink_params*) ; 

elink_status_t FUNC21(struct elink_params *params, struct elink_vars *vars,
		     uint8_t reset_ext_phy)
{
	struct bxe_softc *sc = params->sc;
	uint8_t phy_index, port = params->port, clear_latch_ind = 0;
	FUNC4(sc, "Resetting the link of port %d\n", port);
	/* Disable attentions */
	vars->link_status = 0;
	FUNC8(params, 1);
	FUNC17(params, vars->link_status);
	vars->eee_status &= ~(SHMEM_EEE_LP_ADV_STATUS_MASK |
			      SHMEM_EEE_ACTIVE_BIT);
	FUNC18(params, vars->eee_status);
	FUNC7(sc, NIG_REG_MASK_INTERRUPT_PORT0 + port*4,
		       (ELINK_NIG_MASK_XGXS0_LINK_STATUS |
			ELINK_NIG_MASK_XGXS0_LINK10G |
			ELINK_NIG_MASK_SERDES0_LINK_STATUS |
			ELINK_NIG_MASK_MI_INT));

	/* Activate nig drain */
	FUNC6(sc, NIG_REG_EGRESS_DRAIN0_MODE + port*4, 1);

	/* Disable nig egress interface */
	if (!FUNC0(sc)) {
		FUNC6(sc, NIG_REG_BMAC0_OUT_EN + port*4, 0);
		FUNC6(sc, NIG_REG_EGRESS_EMAC0_OUT_EN + port*4, 0);
	}

#ifdef ELINK_INCLUDE_EMUL
	/* Stop BigMac rx */
	if (!(params->feature_config_flags &
	      ELINK_FEATURE_CONFIG_EMUL_DISABLE_BMAC))
#endif
		if (!FUNC0(sc))
			FUNC11(sc, params->chip_id, port, 0);
#ifdef ELINK_INCLUDE_EMUL
	/* Stop XMAC/UMAC rx */
	if (!(params->feature_config_flags &
	      ELINK_FEATURE_CONFIG_EMUL_DISABLE_XMAC))
#endif
		if (FUNC0(sc) &&
		!FUNC1(sc)) {
			FUNC15(params, 0);
			FUNC14(params, 0);
		}
	/* Disable emac */
	if (!FUNC0(sc))
		FUNC6(sc, NIG_REG_NIG_EMAC0_EN + port*4, 0);

	FUNC3(1000 * 10);
	/* The PHY reset is controlled by GPIO 1
	 * Hold it as vars low
	 */
	 /* Clear link led */
	FUNC13(sc, params);
	FUNC12(params, vars, ELINK_LED_MODE_OFF, 0);

	if (reset_ext_phy && (!FUNC2(sc))) {
		for (phy_index = ELINK_EXT_PHY1; phy_index < params->num_phys;
		      phy_index++) {
			if (params->phy[phy_index].link_reset) {
				FUNC10(params,
						  &params->phy[phy_index]);
				params->phy[phy_index].link_reset(
					&params->phy[phy_index],
					params);
			}
			if (params->phy[phy_index].flags &
			    ELINK_FLAGS_REARM_LATCH_SIGNAL)
				clear_latch_ind = 1;
		}
	}

	if (clear_latch_ind) {
		/* Clear latching indication */
		FUNC9(sc, port, 0);
		FUNC7(sc, NIG_REG_LATCH_BC_0 + port*4,
			       1 << ELINK_NIG_LATCH_BC_ENABLE_MI_INT);
	}
#if defined(ELINK_INCLUDE_EMUL) || defined(ELINK_INCLUDE_FPGA)
	if (!CHIP_REV_IS_SLOW(sc))
#endif
	if (params->phy[ELINK_INT_PHY].link_reset)
		params->phy[ELINK_INT_PHY].link_reset(
			&params->phy[ELINK_INT_PHY], params);

	/* Disable nig ingress interface */
	if (!FUNC0(sc)) {
		/* Reset BigMac */
		FUNC6(sc, GRCBASE_MISC + MISC_REGISTERS_RESET_REG_2_CLEAR,
		       (MISC_REGISTERS_RESET_REG_2_RST_BMAC0 << port));
		FUNC6(sc, NIG_REG_BMAC0_IN_EN + port*4, 0);
		FUNC6(sc, NIG_REG_EMAC0_IN_EN + port*4, 0);
	} else {
		uint32_t xmac_base = (params->port) ? GRCBASE_XMAC1 : GRCBASE_XMAC0;
		FUNC16(params, 0, 0);
		if (FUNC5(sc, MISC_REG_RESET_REG_2) &
		    MISC_REGISTERS_RESET_REG_2_XMAC)
			FUNC6(sc, xmac_base + XMAC_REG_CTRL,
			       XMAC_CTRL_REG_SOFT_RESET);
	}
	vars->link_up = 0;
	vars->phy_flags = 0;
	return ELINK_STATUS_OK;
}