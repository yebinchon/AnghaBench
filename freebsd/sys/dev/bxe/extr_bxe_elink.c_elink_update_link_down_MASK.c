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
struct elink_vars {int eee_status; int /*<<< orphan*/  link_status; scalar_t__ line_speed; int /*<<< orphan*/  mac_type; int /*<<< orphan*/  phy_flags; } ;
struct elink_params {int port; int /*<<< orphan*/  chip_id; struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;
typedef  int /*<<< orphan*/  elink_status_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bxe_softc*) ; 
 scalar_t__ FUNC1 (struct bxe_softc*) ; 
 scalar_t__ FUNC2 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct bxe_softc*,char*,int) ; 
 int /*<<< orphan*/  ELINK_LED_MODE_OFF ; 
 int /*<<< orphan*/  ELINK_LINK_UPDATE_MASK ; 
 int /*<<< orphan*/  ELINK_MAC_TYPE_NONE ; 
 int /*<<< orphan*/  ELINK_STATUS_OK ; 
 scalar_t__ MISC_REG_CPMU_LP_FW_ENABLE_P0 ; 
 scalar_t__ MISC_REG_CPMU_LP_MASK_ENT_P0 ; 
 scalar_t__ NIG_REG_EGRESS_DRAIN0_MODE ; 
 scalar_t__ NIG_REG_NIG_EMAC0_EN ; 
 int /*<<< orphan*/  PHY_PHYSICAL_LINK_FLAG ; 
 int /*<<< orphan*/  FUNC5 (struct bxe_softc*,scalar_t__,int) ; 
 int SHMEM_EEE_ACTIVE_BIT ; 
 int SHMEM_EEE_LP_ADV_STATUS_MASK ; 
 int /*<<< orphan*/  FUNC6 (struct bxe_softc*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct elink_params*,struct elink_vars*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct elink_params*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct elink_params*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct elink_params*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct elink_params*,int) ; 

__attribute__((used)) static elink_status_t FUNC12(struct elink_params *params,
				  struct elink_vars *vars)
{
	struct bxe_softc *sc = params->sc;
	uint8_t port = params->port;

	FUNC4(sc, "Port %x: Link is down\n", port);
	FUNC7(params, vars, ELINK_LED_MODE_OFF, 0);
	vars->phy_flags &= ~PHY_PHYSICAL_LINK_FLAG;
	/* Indicate no mac active */
	vars->mac_type = ELINK_MAC_TYPE_NONE;

	/* Update shared memory */
	vars->link_status &= ~ELINK_LINK_UPDATE_MASK;
	vars->line_speed = 0;
	FUNC10(params, vars->link_status);

	/* Activate nig drain */
	FUNC5(sc, NIG_REG_EGRESS_DRAIN0_MODE + port*4, 1);

	/* Disable emac */
	if (!FUNC2(sc))
		FUNC5(sc, NIG_REG_NIG_EMAC0_EN + port*4, 0);

	FUNC3(1000 * 10);
	/* Reset BigMac/Xmac */
	if (FUNC0(sc) ||
	    FUNC1(sc))
		FUNC6(sc, params->chip_id, params->port, 0);

	if (FUNC2(sc)) {
		/* Prevent LPI Generation by chip */
		FUNC5(sc, MISC_REG_CPMU_LP_FW_ENABLE_P0 + (params->port << 2),
		       0);
		FUNC5(sc, MISC_REG_CPMU_LP_MASK_ENT_P0 + (params->port << 2),
		       0);
		vars->eee_status &= ~(SHMEM_EEE_LP_ADV_STATUS_MASK |
				      SHMEM_EEE_ACTIVE_BIT);

		FUNC11(params, vars->eee_status);
		FUNC9(params, 0);
		FUNC8(params, 0);
	}

	return ELINK_STATUS_OK;
}