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
typedef  int /*<<< orphan*/  uint16_t ;
struct elink_phy {int /*<<< orphan*/  media_type; } ;
struct elink_params {int link_flags; int /*<<< orphan*/  port; int /*<<< orphan*/  shmem_base; int /*<<< orphan*/  chip_id; struct elink_phy* phy; struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*,char*) ; 
 int /*<<< orphan*/  ELINK_ETH_PHY_NOT_PRESENT ; 
 size_t ELINK_EXT_PHY1 ; 
 size_t ELINK_INT_PHY ; 
 int ELINK_PHY_INITIALIZED ; 
 scalar_t__ ELINK_STATUS_ERROR ; 
 int /*<<< orphan*/  MDIO_WC_DEVAD ; 
 int /*<<< orphan*/  MDIO_WC_REG_DIGITAL5_MISC6 ; 
 int /*<<< orphan*/  MISC_REGISTERS_GPIO_HIGH ; 
 int /*<<< orphan*/  MISC_REGISTERS_GPIO_INT_OUTPUT_CLR ; 
 int /*<<< orphan*/  MISC_REGISTERS_GPIO_INT_OUTPUT_SET ; 
 int /*<<< orphan*/  FUNC2 (struct bxe_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct bxe_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bxe_softc*,struct elink_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct bxe_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct elink_params*,struct elink_phy*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct elink_params*,struct elink_phy*) ; 
 int /*<<< orphan*/  FUNC8 (struct bxe_softc*,struct elink_params*) ; 
 int /*<<< orphan*/  FUNC9 (struct elink_params*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct elink_phy*,struct elink_params*) ; 
 int /*<<< orphan*/  FUNC11 (struct elink_params*,struct elink_phy*,int) ; 
 scalar_t__ FUNC12 (struct elink_phy*,struct elink_params*) ; 
 int /*<<< orphan*/  FUNC13 (struct elink_phy*,struct elink_params*) ; 
 int /*<<< orphan*/  FUNC14 (struct bxe_softc*,struct elink_phy*,int) ; 

void FUNC15(struct elink_params *params)
{
	struct bxe_softc *sc = params->sc;
	struct elink_phy *phy;
	uint32_t gpio_val;
	uint8_t gpio_num, gpio_port;
	if (FUNC0(sc)) {
		phy = &params->phy[ELINK_INT_PHY];
		/* Always enable TX laser,will be disabled in case of fault */
		FUNC11(params, phy, 1);
	} else {
		phy = &params->phy[ELINK_EXT_PHY1];
	}
	if (FUNC5(sc, params->chip_id, params->shmem_base,
				      params->port, &gpio_num, &gpio_port) ==
	    ELINK_STATUS_ERROR) {
		FUNC1(sc, "Failed to get MOD_ABS interrupt config\n");
		return;
	}

	/* Set valid module led off */
	FUNC9(params, MISC_REGISTERS_GPIO_HIGH);

	/* Get current gpio val reflecting module plugged in / out*/
	gpio_val = FUNC3(sc, gpio_num, gpio_port);

	/* Call the handling function in case module is detected */
	if (gpio_val == 0) {
		FUNC8(sc, params);
		FUNC7(params, phy);

		FUNC6(params, phy, 1);
		FUNC2(sc, gpio_num,
				   MISC_REGISTERS_GPIO_INT_OUTPUT_CLR,
				   gpio_port);
		if (FUNC12(phy, params) == 0) {
			FUNC10(phy, params);
			if (FUNC0(sc)) {
				uint16_t rx_tx_in_reset;
				/* In case WC is out of reset, reconfigure the
				 * link speed while taking into account 1G
				 * module limitation.
				 */
				FUNC4(sc, phy,
						MDIO_WC_DEVAD,
						MDIO_WC_REG_DIGITAL5_MISC6,
						&rx_tx_in_reset);
				if ((!rx_tx_in_reset) &&
				    (params->link_flags &
				     ELINK_PHY_INITIALIZED)) {
					FUNC14(sc, phy, 1);
					FUNC13(phy, params);
					FUNC14(sc, phy, 0);
				}
			}
		} else {
			FUNC1(sc, "SFP+ module is not initialized\n");
		}
	} else {
		FUNC2(sc, gpio_num,
				   MISC_REGISTERS_GPIO_INT_OUTPUT_SET,
				   gpio_port);
		/* Module was plugged out.
		 * Disable transmit for this module
		 */
		phy->media_type = ELINK_ETH_PHY_NOT_PRESENT;
	}
}