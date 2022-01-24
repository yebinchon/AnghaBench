#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct elink_vars {int link_status; int phy_flags; int flow_ctrl; int eee_status; int /*<<< orphan*/  line_speed; scalar_t__ link_up; } ;
struct elink_params {int port; TYPE_1__* phy; struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;
typedef  int /*<<< orphan*/  elink_status_t ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bxe_softc*) ; 
 scalar_t__ FUNC1 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct bxe_softc*,char*) ; 
 int ELINK_FLAGS_TX_ERROR_CHECK ; 
 int ELINK_FLOW_CTRL_RX ; 
 int ELINK_FLOW_CTRL_TX ; 
 int ELINK_INT_PHY ; 
 int /*<<< orphan*/  ELINK_LED_MODE_OPER ; 
 int ELINK_MAX_PHYS ; 
 scalar_t__ FUNC4 (struct elink_params*) ; 
 int /*<<< orphan*/  ELINK_SPEED_10000 ; 
 scalar_t__ ELINK_STATUS_NO_LINK ; 
 int /*<<< orphan*/  ELINK_STATUS_OK ; 
 int LINK_STATUS_AUTO_NEGOTIATE_COMPLETE ; 
 int LINK_STATUS_LINK_UP ; 
 int LINK_STATUS_PHYSICAL_LINK_FLAG ; 
 int LINK_STATUS_RX_FLOW_CONTROL_ENABLED ; 
 int LINK_STATUS_TX_FLOW_CONTROL_ENABLED ; 
 scalar_t__ MISC_REG_CPMU_LP_DR_ENABLE ; 
 scalar_t__ MISC_REG_CPMU_LP_FW_ENABLE_P0 ; 
 scalar_t__ MISC_REG_CPMU_LP_MASK_ENT_P0 ; 
 scalar_t__ NIG_REG_EGRESS_DRAIN0_MODE ; 
 int PHY_HALF_OPEN_CONN_FLAG ; 
 int PHY_PHYSICAL_LINK_FLAG ; 
 int PHY_SGMII_FLAG ; 
 int /*<<< orphan*/  FUNC5 (struct bxe_softc*,scalar_t__,int) ; 
 int SHMEM_EEE_ACTIVE_BIT ; 
 int SHMEM_EEE_LPI_REQUESTED_BIT ; 
 scalar_t__ FUNC6 (struct bxe_softc*) ; 
 scalar_t__ FUNC7 (struct elink_params*,struct elink_vars*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct elink_params*,struct elink_vars*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct elink_params*,struct elink_vars*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct elink_params*,struct elink_vars*) ; 
 int /*<<< orphan*/  FUNC11 (struct elink_params*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct elink_params*) ; 
 int /*<<< orphan*/  FUNC13 (struct elink_params*,struct elink_vars*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct elink_params*,struct elink_vars*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct elink_params*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct elink_params*,int) ; 
 scalar_t__ FUNC17 (struct elink_params*,struct elink_vars*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static elink_status_t FUNC18(struct elink_params *params,
				struct elink_vars *vars,
				uint8_t link_10g)
{
	struct bxe_softc *sc = params->sc;
	uint8_t phy_idx, port = params->port;
	elink_status_t rc = ELINK_STATUS_OK;

	vars->link_status |= (LINK_STATUS_LINK_UP |
			      LINK_STATUS_PHYSICAL_LINK_FLAG);
	vars->phy_flags |= PHY_PHYSICAL_LINK_FLAG;

	if (vars->flow_ctrl & ELINK_FLOW_CTRL_TX)
		vars->link_status |=
			LINK_STATUS_TX_FLOW_CONTROL_ENABLED;

	if (vars->flow_ctrl & ELINK_FLOW_CTRL_RX)
		vars->link_status |=
			LINK_STATUS_RX_FLOW_CONTROL_ENABLED;
	if (FUNC6(sc)) {
		if (link_10g) {
			if (FUNC17(params, vars, 0) ==
			    ELINK_STATUS_NO_LINK) {
				FUNC3(sc, "Found errors on XMAC\n");
				vars->link_up = 0;
				vars->phy_flags |= PHY_HALF_OPEN_CONN_FLAG;
				vars->link_status &= ~LINK_STATUS_LINK_UP;
			}
		} else
			FUNC14(params, vars, 0);
		FUNC13(params, vars,
			      ELINK_LED_MODE_OPER, vars->line_speed);

		if ((vars->eee_status & SHMEM_EEE_ACTIVE_BIT) &&
		    (vars->eee_status & SHMEM_EEE_LPI_REQUESTED_BIT)) {
			FUNC3(sc, "Enabling LPI assertion\n");
			FUNC5(sc, MISC_REG_CPMU_LP_FW_ENABLE_P0 +
			       (params->port << 2), 1);
			FUNC5(sc, MISC_REG_CPMU_LP_DR_ENABLE, 1);
			FUNC5(sc, MISC_REG_CPMU_LP_MASK_ENT_P0 +
			       (params->port << 2), 0xfc20);
		}
	}
	if ((FUNC0(sc) ||
	     FUNC1(sc))) {
		if (link_10g) {
			if (FUNC7(params, vars, 0, 1) ==
			    ELINK_STATUS_NO_LINK) {
				FUNC3(sc, "Found errors on BMAC\n");
				vars->link_up = 0;
				vars->phy_flags |= PHY_HALF_OPEN_CONN_FLAG;
				vars->link_status &= ~LINK_STATUS_LINK_UP;
			}

			FUNC13(params, vars,
				      ELINK_LED_MODE_OPER, ELINK_SPEED_10000);
		} else {
			rc = FUNC10(params, vars);
			FUNC9(params, vars, 0);

			/* AN complete? */
			if ((vars->link_status &
			     LINK_STATUS_AUTO_NEGOTIATE_COMPLETE)
			    && (!(vars->phy_flags & PHY_SGMII_FLAG)) &&
			    FUNC4(params))
				FUNC12(params);
		}
	}

	/* PBF - link up */
	if (FUNC0(sc))
		rc |= FUNC11(params, vars->flow_ctrl,
				       vars->line_speed);

	/* Disable drain */
	FUNC5(sc, NIG_REG_EGRESS_DRAIN0_MODE + port*4, 0);

	/* Update shared memory */
	FUNC15(params, vars->link_status);
	FUNC16(params, vars->eee_status);
	/* Check remote fault */
	for (phy_idx = ELINK_INT_PHY; phy_idx < ELINK_MAX_PHYS; phy_idx++) {
		if (params->phy[phy_idx].flags & ELINK_FLAGS_TX_ERROR_CHECK) {
			FUNC8(params, vars, 0);
			break;
		}
	}
	FUNC2(1000 * 20);
	return rc;
}