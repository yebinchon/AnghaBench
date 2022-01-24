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
typedef  scalar_t__ uint32_t ;
struct elink_vars {int phy_flags; } ;
struct elink_params {int port; struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;
typedef  int /*<<< orphan*/  elink_status_t ;

/* Variables and functions */
 scalar_t__ BIGMAC2_REGISTER_RX_LSS_STAT ; 
 scalar_t__ BIGMAC_REGISTER_RX_LSS_STATUS ; 
 scalar_t__ FUNC0 (struct bxe_softc*) ; 
 scalar_t__ FUNC1 (struct bxe_softc*) ; 
 int /*<<< orphan*/  ELINK_STATUS_OK ; 
 scalar_t__ GRCBASE_XMAC0 ; 
 scalar_t__ GRCBASE_XMAC1 ; 
 int /*<<< orphan*/  LINK_STATUS_NONE ; 
 int MISC_REGISTERS_RESET_REG_2_RST_BMAC0 ; 
 int MISC_REGISTERS_RESET_REG_2_XMAC ; 
 scalar_t__ MISC_REG_RESET_REG_2 ; 
 scalar_t__ NIG_REG_EGRESS_EMAC0_PORT ; 
 scalar_t__ NIG_REG_INGRESS_BMAC0_MEM ; 
 scalar_t__ NIG_REG_INGRESS_BMAC1_MEM ; 
 int /*<<< orphan*/  PHY_HALF_OPEN_CONN_FLAG ; 
 int PHY_PHYSICAL_LINK_FLAG ; 
 int FUNC2 (struct bxe_softc*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct bxe_softc*,scalar_t__,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bxe_softc*,scalar_t__,int) ; 
 int XMAC_CLEAR_RX_LSS_STATUS_REG_CLEAR_LOCAL_FAULT_STATUS ; 
 int XMAC_CLEAR_RX_LSS_STATUS_REG_CLEAR_REMOTE_FAULT_STATUS ; 
 scalar_t__ XMAC_REG_CLEAR_RX_LSS_STATUS ; 
 scalar_t__ XMAC_REG_RX_LSS_STATUS ; 
 int /*<<< orphan*/  FUNC5 (struct elink_params*,struct elink_vars*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
elink_status_t FUNC6(struct elink_params *params,
				struct elink_vars *vars,
				uint8_t notify)
{
	struct bxe_softc *sc = params->sc;
	uint32_t lss_status = 0;
	uint32_t mac_base;
	/* In case link status is physically up @ 10G do */
	if (((vars->phy_flags & PHY_PHYSICAL_LINK_FLAG) == 0) ||
	    (FUNC2(sc, NIG_REG_EGRESS_EMAC0_PORT + params->port*4)))
		return ELINK_STATUS_OK;

	if (FUNC1(sc) &&
	    (FUNC2(sc, MISC_REG_RESET_REG_2) &
	      (MISC_REGISTERS_RESET_REG_2_XMAC))) {
		/* Check E3 XMAC */
		/* Note that link speed cannot be queried here, since it may be
		 * zero while link is down. In case UMAC is active, LSS will
		 * simply not be set
		 */
		mac_base = (params->port) ? GRCBASE_XMAC1 : GRCBASE_XMAC0;

		/* Clear stick bits (Requires rising edge) */
		FUNC4(sc, mac_base + XMAC_REG_CLEAR_RX_LSS_STATUS, 0);
		FUNC4(sc, mac_base + XMAC_REG_CLEAR_RX_LSS_STATUS,
		       XMAC_CLEAR_RX_LSS_STATUS_REG_CLEAR_LOCAL_FAULT_STATUS |
		       XMAC_CLEAR_RX_LSS_STATUS_REG_CLEAR_REMOTE_FAULT_STATUS);
		if (FUNC2(sc, mac_base + XMAC_REG_RX_LSS_STATUS))
			lss_status = 1;

		FUNC5(params, vars, lss_status,
					 PHY_HALF_OPEN_CONN_FLAG,
					 LINK_STATUS_NONE, notify);
	} else if (FUNC2(sc, MISC_REG_RESET_REG_2) &
		   (MISC_REGISTERS_RESET_REG_2_RST_BMAC0 << params->port)) {
		/* Check E1X / E2 BMAC */
		uint32_t lss_status_reg;
		uint32_t wb_data[2];
		mac_base = params->port ? NIG_REG_INGRESS_BMAC1_MEM :
			NIG_REG_INGRESS_BMAC0_MEM;
		/*  Read BIGMAC_REGISTER_RX_LSS_STATUS */
		if (FUNC0(sc))
			lss_status_reg = BIGMAC2_REGISTER_RX_LSS_STAT;
		else
			lss_status_reg = BIGMAC_REGISTER_RX_LSS_STATUS;

		FUNC3(sc, mac_base + lss_status_reg, wb_data, 2);
		lss_status = (wb_data[0] > 0);

		FUNC5(params, vars, lss_status,
					 PHY_HALF_OPEN_CONN_FLAG,
					 LINK_STATUS_NONE, notify);
	}
	return ELINK_STATUS_OK;
}