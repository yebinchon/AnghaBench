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
typedef  int /*<<< orphan*/  uint16_t ;
struct elink_vars {int ieee_fc; } ;
struct elink_phy {int dummy; } ;
struct elink_params {struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MDIO_AN_DEVAD ; 
 int /*<<< orphan*/  MDIO_AN_REG_ADV_PAUSE ; 
 int /*<<< orphan*/  MDIO_AN_REG_ADV_PAUSE_ASYMMETRIC ; 
 int /*<<< orphan*/  MDIO_AN_REG_ADV_PAUSE_BOTH ; 
 int /*<<< orphan*/  MDIO_AN_REG_ADV_PAUSE_PAUSE ; 
 int MDIO_COMBO_IEEE0_AUTO_NEG_ADV_PAUSE_ASYMMETRIC ; 
 int MDIO_COMBO_IEEE0_AUTO_NEG_ADV_PAUSE_BOTH ; 
 int /*<<< orphan*/  FUNC1 (struct elink_phy*,struct elink_params*,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct bxe_softc*,struct elink_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct bxe_softc*,struct elink_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct elink_params *params,
				    struct elink_phy *phy,
				    struct elink_vars *vars)
{
	uint16_t val;
	struct bxe_softc *sc = params->sc;
	/* Read modify write pause advertizing */
	FUNC2(sc, phy, MDIO_AN_DEVAD, MDIO_AN_REG_ADV_PAUSE, &val);

	val &= ~MDIO_AN_REG_ADV_PAUSE_BOTH;

	/* Please refer to Table 28B-3 of 802.3ab-1999 spec. */
	FUNC1(phy, params, &vars->ieee_fc);
	if ((vars->ieee_fc &
	    MDIO_COMBO_IEEE0_AUTO_NEG_ADV_PAUSE_ASYMMETRIC) ==
	    MDIO_COMBO_IEEE0_AUTO_NEG_ADV_PAUSE_ASYMMETRIC) {
		val |= MDIO_AN_REG_ADV_PAUSE_ASYMMETRIC;
	}
	if ((vars->ieee_fc &
	    MDIO_COMBO_IEEE0_AUTO_NEG_ADV_PAUSE_BOTH) ==
	    MDIO_COMBO_IEEE0_AUTO_NEG_ADV_PAUSE_BOTH) {
		val |= MDIO_AN_REG_ADV_PAUSE_PAUSE;
	}
	FUNC0(sc, "Ext phy AN advertize 0x%x\n", val);
	FUNC3(sc, phy, MDIO_AN_DEVAD, MDIO_AN_REG_ADV_PAUSE, val);
}