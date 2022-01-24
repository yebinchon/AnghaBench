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
struct elink_phy {int /*<<< orphan*/  type; } ;
struct elink_params {int port; int hw_led_mode; int link_flags; struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*) ; 
 scalar_t__ FUNC1 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct bxe_softc*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct bxe_softc*,char*,int) ; 
#define  ELINK_LED_MODE_FRONT_PANEL_OFF 131 
#define  ELINK_LED_MODE_OFF 130 
#define  ELINK_LED_MODE_ON 129 
#define  ELINK_LED_MODE_OPER 128 
 int ELINK_LINK_FLAGS_INT_DISABLED ; 
 int ELINK_NIG_MASK_MI_INT ; 
 int /*<<< orphan*/  MDIO_PMA_DEVAD ; 
 int /*<<< orphan*/  MDIO_PMA_REG_8481_LED1_MASK ; 
 int /*<<< orphan*/  MDIO_PMA_REG_8481_LED2_MASK ; 
 int /*<<< orphan*/  MDIO_PMA_REG_8481_LED3_MASK ; 
 int /*<<< orphan*/  MDIO_PMA_REG_8481_LED5_MASK ; 
 int /*<<< orphan*/  MDIO_PMA_REG_8481_LINK_SIGNAL ; 
 int MDIO_PMA_REG_8481_LINK_SIGNAL_LED4_ENABLE_MASK ; 
 int MDIO_PMA_REG_8481_LINK_SIGNAL_LED4_ENABLE_SHIFT ; 
 int /*<<< orphan*/  MDIO_PMA_REG_8481_SIGNAL_MASK ; 
 int /*<<< orphan*/  MDIO_WC_DEVAD ; 
 int /*<<< orphan*/  MDIO_WC_REG_GP2_STATUS_GP_2_1 ; 
 int /*<<< orphan*/  NIG_REG_MASK_INTERRUPT_PORT0 ; 
 int /*<<< orphan*/  PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM84834 ; 
 int FUNC4 (struct bxe_softc*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct bxe_softc*) ; 
 int SHARED_HW_CFG_LED_EXTPHY1 ; 
 int SHARED_HW_CFG_LED_EXTPHY2 ; 
 int SHARED_HW_CFG_LED_MODE_SHIFT ; 
 int /*<<< orphan*/  FUNC6 (struct bxe_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct bxe_softc*,struct elink_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC8 (struct bxe_softc*,struct elink_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct elink_params*) ; 

__attribute__((used)) static void FUNC10(struct elink_phy *phy,
				     struct elink_params *params, uint8_t mode)
{
	struct bxe_softc *sc = params->sc;
	uint16_t val;
	uint8_t port;

	if (!(FUNC0(sc)))
		port = FUNC5(sc);
	else
		port = params->port;
	switch (mode) {
	case ELINK_LED_MODE_OFF:

		FUNC3(sc, "Port 0x%x: LED MODE OFF\n", port);

		if ((params->hw_led_mode << SHARED_HW_CFG_LED_MODE_SHIFT) ==
		    SHARED_HW_CFG_LED_EXTPHY1) {

			/* Set LED masks */
			FUNC8(sc, phy,
					MDIO_PMA_DEVAD,
					MDIO_PMA_REG_8481_LED1_MASK,
					0x0);

			FUNC8(sc, phy,
					MDIO_PMA_DEVAD,
					MDIO_PMA_REG_8481_LED2_MASK,
					0x0);

			FUNC8(sc, phy,
					MDIO_PMA_DEVAD,
					MDIO_PMA_REG_8481_LED3_MASK,
					0x0);

			FUNC8(sc, phy,
					MDIO_PMA_DEVAD,
					MDIO_PMA_REG_8481_LED5_MASK,
					0x0);

		} else {
			FUNC8(sc, phy,
					 MDIO_PMA_DEVAD,
					 MDIO_PMA_REG_8481_LED1_MASK,
					 0x0);
		}
		break;
	case ELINK_LED_MODE_FRONT_PANEL_OFF:

		FUNC3(sc, "Port 0x%x: LED MODE FRONT PANEL OFF\n",
		   port);

		if ((params->hw_led_mode << SHARED_HW_CFG_LED_MODE_SHIFT) ==
		    SHARED_HW_CFG_LED_EXTPHY1) {

			/* Set LED masks */
			FUNC8(sc, phy,
					 MDIO_PMA_DEVAD,
					 MDIO_PMA_REG_8481_LED1_MASK,
					 0x0);

			FUNC8(sc, phy,
					 MDIO_PMA_DEVAD,
					 MDIO_PMA_REG_8481_LED2_MASK,
					 0x0);

			FUNC8(sc, phy,
					 MDIO_PMA_DEVAD,
					 MDIO_PMA_REG_8481_LED3_MASK,
					 0x0);

			FUNC8(sc, phy,
					 MDIO_PMA_DEVAD,
					 MDIO_PMA_REG_8481_LED5_MASK,
					 0x20);

		} else {
			FUNC8(sc, phy,
					 MDIO_PMA_DEVAD,
					 MDIO_PMA_REG_8481_LED1_MASK,
					 0x0);
			if (phy->type ==
			    PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM84834) {
				/* Disable MI_INT interrupt before setting LED4
				 * source to constant off.
				 */
				if (FUNC4(sc, NIG_REG_MASK_INTERRUPT_PORT0 +
					   params->port*4) &
				    ELINK_NIG_MASK_MI_INT) {
					params->link_flags |=
					ELINK_LINK_FLAGS_INT_DISABLED;

					FUNC6(
						sc,
						NIG_REG_MASK_INTERRUPT_PORT0 +
						params->port*4,
						ELINK_NIG_MASK_MI_INT);
				}
				FUNC8(sc, phy,
						 MDIO_PMA_DEVAD,
						 MDIO_PMA_REG_8481_SIGNAL_MASK,
						 0x0);
			}
		}
		break;
	case ELINK_LED_MODE_ON:

		FUNC3(sc, "Port 0x%x: LED MODE ON\n", port);

		if ((params->hw_led_mode << SHARED_HW_CFG_LED_MODE_SHIFT) ==
		    SHARED_HW_CFG_LED_EXTPHY1) {
			/* Set control reg */
			FUNC7(sc, phy,
					MDIO_PMA_DEVAD,
					MDIO_PMA_REG_8481_LINK_SIGNAL,
					&val);
			val &= 0x8000;
			val |= 0x2492;

			FUNC8(sc, phy,
					 MDIO_PMA_DEVAD,
					 MDIO_PMA_REG_8481_LINK_SIGNAL,
					 val);

			/* Set LED masks */
			FUNC8(sc, phy,
					 MDIO_PMA_DEVAD,
					 MDIO_PMA_REG_8481_LED1_MASK,
					 0x0);

			FUNC8(sc, phy,
					 MDIO_PMA_DEVAD,
					 MDIO_PMA_REG_8481_LED2_MASK,
					 0x20);

			FUNC8(sc, phy,
					 MDIO_PMA_DEVAD,
					 MDIO_PMA_REG_8481_LED3_MASK,
					 0x20);

			FUNC8(sc, phy,
					 MDIO_PMA_DEVAD,
					 MDIO_PMA_REG_8481_LED5_MASK,
					 0x0);
		} else {
			FUNC8(sc, phy,
					 MDIO_PMA_DEVAD,
					 MDIO_PMA_REG_8481_LED1_MASK,
					 0x20);
			if (phy->type ==
			    PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM84834) {
				/* Disable MI_INT interrupt before setting LED4
				 * source to constant on.
				 */
				if (FUNC4(sc, NIG_REG_MASK_INTERRUPT_PORT0 +
					   params->port*4) &
				    ELINK_NIG_MASK_MI_INT) {
					params->link_flags |=
					ELINK_LINK_FLAGS_INT_DISABLED;

					FUNC6(
						sc,
						NIG_REG_MASK_INTERRUPT_PORT0 +
						params->port*4,
						ELINK_NIG_MASK_MI_INT);
				}
				FUNC8(sc, phy,
						 MDIO_PMA_DEVAD,
						 MDIO_PMA_REG_8481_SIGNAL_MASK,
						 0x20);
			}
		}
		break;

	case ELINK_LED_MODE_OPER:

		FUNC3(sc, "Port 0x%x: LED MODE OPER\n", port);

		if ((params->hw_led_mode << SHARED_HW_CFG_LED_MODE_SHIFT) ==
		    SHARED_HW_CFG_LED_EXTPHY1) {

			/* Set control reg */
			FUNC7(sc, phy,
					MDIO_PMA_DEVAD,
					MDIO_PMA_REG_8481_LINK_SIGNAL,
					&val);

			if (!((val &
			       MDIO_PMA_REG_8481_LINK_SIGNAL_LED4_ENABLE_MASK)
			  >> MDIO_PMA_REG_8481_LINK_SIGNAL_LED4_ENABLE_SHIFT)) {
				FUNC2(sc, "Setting LINK_SIGNAL\n");
				FUNC8(sc, phy,
						 MDIO_PMA_DEVAD,
						 MDIO_PMA_REG_8481_LINK_SIGNAL,
						 0xa492);
			}

			/* Set LED masks */
			FUNC8(sc, phy,
					 MDIO_PMA_DEVAD,
					 MDIO_PMA_REG_8481_LED1_MASK,
					 0x10);

			FUNC8(sc, phy,
					 MDIO_PMA_DEVAD,
					 MDIO_PMA_REG_8481_LED2_MASK,
					 0x80);

			FUNC8(sc, phy,
					 MDIO_PMA_DEVAD,
					 MDIO_PMA_REG_8481_LED3_MASK,
					 0x98);

			FUNC8(sc, phy,
					 MDIO_PMA_DEVAD,
					 MDIO_PMA_REG_8481_LED5_MASK,
					 0x40);

		} else {
			/* EXTPHY2 LED mode indicate that the 100M/1G/10G LED
			 * sources are all wired through LED1, rather than only
			 * 10G in other modes.
			 */
			val = ((params->hw_led_mode <<
				SHARED_HW_CFG_LED_MODE_SHIFT) ==
			       SHARED_HW_CFG_LED_EXTPHY2) ? 0x98 : 0x80;

			FUNC8(sc, phy,
					 MDIO_PMA_DEVAD,
					 MDIO_PMA_REG_8481_LED1_MASK,
					 val);

			/* Tell LED3 to blink on source */
			FUNC7(sc, phy,
					MDIO_PMA_DEVAD,
					MDIO_PMA_REG_8481_LINK_SIGNAL,
					&val);
			val &= ~(7<<6);
			val |= (1<<6); /* A83B[8:6]= 1 */
			FUNC8(sc, phy,
					 MDIO_PMA_DEVAD,
					 MDIO_PMA_REG_8481_LINK_SIGNAL,
					 val);
			if (phy->type ==
			    PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM84834) {
				/* Restore LED4 source to external link,
				 * and re-enable interrupts.
				 */
				FUNC8(sc, phy,
						 MDIO_PMA_DEVAD,
						 MDIO_PMA_REG_8481_SIGNAL_MASK,
						 0x40);
				if (params->link_flags &
				    ELINK_LINK_FLAGS_INT_DISABLED) {
					FUNC9(params);
					params->link_flags &=
						~ELINK_LINK_FLAGS_INT_DISABLED;
				}
			}
		}
		break;
	}

	/* This is a workaround for E3+84833 until autoneg
	 * restart is fixed in f/w
	 */
	if (FUNC1(sc)) {
		FUNC7(sc, phy, MDIO_WC_DEVAD,
				MDIO_WC_REG_GP2_STATUS_GP_2_1, &val);
	}
}