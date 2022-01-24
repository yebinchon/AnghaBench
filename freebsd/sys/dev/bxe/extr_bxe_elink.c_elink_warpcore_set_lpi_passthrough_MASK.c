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
struct elink_phy {int dummy; } ;
struct elink_params {struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,char*) ; 
 int /*<<< orphan*/  MDIO_WC_DEVAD ; 
 int /*<<< orphan*/  MDIO_WC_REG_DIGITAL4_MISC5 ; 
 int /*<<< orphan*/  MDIO_WC_REG_EEE_COMBO_CONTROL0 ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*,struct elink_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bxe_softc*,struct elink_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct elink_phy *phy,
					       struct elink_params *params)
{
	struct bxe_softc *sc = params->sc;

	FUNC0(sc, "Configure WC for LPI pass through\n");
	FUNC2(sc, phy, MDIO_WC_DEVAD,
			 MDIO_WC_REG_EEE_COMBO_CONTROL0, 0x7c);
	FUNC1(sc, phy, MDIO_WC_DEVAD,
				 MDIO_WC_REG_DIGITAL4_MISC5, 0xc000);
}