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
 int /*<<< orphan*/  MISC_REG_LCPLL_E40_PWRDWN ; 
 int /*<<< orphan*/  MISC_REG_LCPLL_E40_RESETB_ANA ; 
 int /*<<< orphan*/  MISC_REG_LCPLL_E40_RESETB_DIG ; 
 int /*<<< orphan*/  MISC_REG_WC0_RESET ; 
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct elink_params*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct elink_phy *phy,
				    struct elink_params *params)
{
	struct bxe_softc *sc = params->sc;
	FUNC1(params, 0);
	/* Put Warpcore in low power mode */
	FUNC0(sc, MISC_REG_WC0_RESET, 0x0c0e);

	/* Put LCPLL in low power mode */
	FUNC0(sc, MISC_REG_LCPLL_E40_PWRDWN, 1);
	FUNC0(sc, MISC_REG_LCPLL_E40_RESETB_ANA, 0);
	FUNC0(sc, MISC_REG_LCPLL_E40_RESETB_DIG, 0);
}