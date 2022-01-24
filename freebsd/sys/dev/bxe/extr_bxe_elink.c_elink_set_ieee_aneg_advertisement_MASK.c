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
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*,struct elink_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  MDIO_CL73_IEEEB1_AN_ADV1 ; 
 int MDIO_CL73_IEEEB1_AN_ADV1_PAUSE_BOTH ; 
 int MDIO_CL73_IEEEB1_AN_ADV1_PAUSE_MASK ; 
 int /*<<< orphan*/  MDIO_COMBO_IEEE0_AUTO_NEG_ADV ; 
 int /*<<< orphan*/  MDIO_REG_BANK_CL73_IEEEB1 ; 
 int /*<<< orphan*/  MDIO_REG_BANK_COMBO_IEEE0 ; 

__attribute__((used)) static void FUNC2(struct elink_phy *phy,
					      struct elink_params *params,
					      uint16_t ieee_fc)
{
	struct bxe_softc *sc = params->sc;
	uint16_t val;
	/* For AN, we are always publishing full duplex */

	FUNC1(sc, phy,
			  MDIO_REG_BANK_COMBO_IEEE0,
			  MDIO_COMBO_IEEE0_AUTO_NEG_ADV, ieee_fc);
	FUNC0(sc, phy,
			  MDIO_REG_BANK_CL73_IEEEB1,
			  MDIO_CL73_IEEEB1_AN_ADV1, &val);
	val &= ~MDIO_CL73_IEEEB1_AN_ADV1_PAUSE_BOTH;
	val |= ((ieee_fc<<3) & MDIO_CL73_IEEEB1_AN_ADV1_PAUSE_MASK);
	FUNC1(sc, phy,
			  MDIO_REG_BANK_CL73_IEEEB1,
			  MDIO_CL73_IEEEB1_AN_ADV1, val);
}