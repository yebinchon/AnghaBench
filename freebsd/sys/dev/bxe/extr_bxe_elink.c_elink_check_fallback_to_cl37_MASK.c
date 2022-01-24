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
typedef  int uint16_t ;
struct elink_phy {int dummy; } ;
struct elink_params {struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,struct elink_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*,struct elink_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bxe_softc*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct bxe_softc*,char*,int) ; 
 int /*<<< orphan*/  MDIO_CL73_IEEEB0_CL73_AN_CONTROL ; 
 int /*<<< orphan*/  MDIO_CL73_IEEEB0_CL73_AN_CONTROL_AN_EN ; 
 int /*<<< orphan*/  MDIO_CL73_USERB0_CL73_USTAT1 ; 
 int MDIO_CL73_USERB0_CL73_USTAT1_AN_GOOD_CHECK_BAM37 ; 
 int MDIO_CL73_USERB0_CL73_USTAT1_LINK_STATUS_CHECK ; 
 int /*<<< orphan*/  MDIO_REG_BANK_CL73_IEEEB0 ; 
 int /*<<< orphan*/  MDIO_REG_BANK_CL73_USERB0 ; 
 int /*<<< orphan*/  MDIO_REG_BANK_REMOTE_PHY ; 
 int /*<<< orphan*/  MDIO_REG_BANK_RX0 ; 
 int /*<<< orphan*/  MDIO_REMOTE_PHY_MISC_RX_STATUS ; 
 int MDIO_REMOTE_PHY_MISC_RX_STATUS_CL37_FSM_RECEIVED_BRCM_OUI_MSG ; 
 int MDIO_REMOTE_PHY_MISC_RX_STATUS_CL37_FSM_RECEIVED_OVER1G_MSG ; 
 int /*<<< orphan*/  MDIO_RX0_RX_STATUS ; 
 int MDIO_RX0_RX_STATUS_SIGDET ; 
 int /*<<< orphan*/  FUNC4 (struct elink_phy*,struct elink_params*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct elink_phy *phy,
					 struct elink_params *params)
{
	struct bxe_softc *sc = params->sc;
	uint16_t rx_status, ustat_val, cl37_fsm_received;
	FUNC2(sc, "elink_check_fallback_to_cl37\n");
	/* Step 1: Make sure signal is detected */
	FUNC0(sc, phy,
			  MDIO_REG_BANK_RX0,
			  MDIO_RX0_RX_STATUS,
			  &rx_status);
	if ((rx_status & MDIO_RX0_RX_STATUS_SIGDET) !=
	    (MDIO_RX0_RX_STATUS_SIGDET)) {
		FUNC3(sc, "Signal is not detected. Restoring CL73."
			     "rx_status(0x80b0) = 0x%x\n", rx_status);
		FUNC1(sc, phy,
				  MDIO_REG_BANK_CL73_IEEEB0,
				  MDIO_CL73_IEEEB0_CL73_AN_CONTROL,
				  MDIO_CL73_IEEEB0_CL73_AN_CONTROL_AN_EN);
		return;
	}
	/* Step 2: Check CL73 state machine */
	FUNC0(sc, phy,
			  MDIO_REG_BANK_CL73_USERB0,
			  MDIO_CL73_USERB0_CL73_USTAT1,
			  &ustat_val);
	if ((ustat_val &
	     (MDIO_CL73_USERB0_CL73_USTAT1_LINK_STATUS_CHECK |
	      MDIO_CL73_USERB0_CL73_USTAT1_AN_GOOD_CHECK_BAM37)) !=
	    (MDIO_CL73_USERB0_CL73_USTAT1_LINK_STATUS_CHECK |
	      MDIO_CL73_USERB0_CL73_USTAT1_AN_GOOD_CHECK_BAM37)) {
		FUNC3(sc, "CL73 state-machine is not stable. "
			     "ustat_val(0x8371) = 0x%x\n", ustat_val);
		return;
	}
	/* Step 3: Check CL37 Message Pages received to indicate LP
	 * supports only CL37
	 */
	FUNC0(sc, phy,
			  MDIO_REG_BANK_REMOTE_PHY,
			  MDIO_REMOTE_PHY_MISC_RX_STATUS,
			  &cl37_fsm_received);
	if ((cl37_fsm_received &
	     (MDIO_REMOTE_PHY_MISC_RX_STATUS_CL37_FSM_RECEIVED_OVER1G_MSG |
	     MDIO_REMOTE_PHY_MISC_RX_STATUS_CL37_FSM_RECEIVED_BRCM_OUI_MSG)) !=
	    (MDIO_REMOTE_PHY_MISC_RX_STATUS_CL37_FSM_RECEIVED_OVER1G_MSG |
	      MDIO_REMOTE_PHY_MISC_RX_STATUS_CL37_FSM_RECEIVED_BRCM_OUI_MSG)) {
		FUNC3(sc, "No CL37 FSM were received. "
			     "misc_rx_status(0x8330) = 0x%x\n",
			 cl37_fsm_received);
		return;
	}
	/* The combined cl37/cl73 fsm state information indicating that
	 * we are connected to a device which does not support cl73, but
	 * does support cl37 BAM. In this case we disable cl73 and
	 * restart cl37 auto-neg
	 */

	/* Disable CL73 */
	FUNC1(sc, phy,
			  MDIO_REG_BANK_CL73_IEEEB0,
			  MDIO_CL73_IEEEB0_CL73_AN_CONTROL,
			  0);
	/* Restart CL37 autoneg */
	FUNC4(phy, params, 0);
	FUNC2(sc, "Disabling CL73, and restarting CL37 autoneg\n");
}