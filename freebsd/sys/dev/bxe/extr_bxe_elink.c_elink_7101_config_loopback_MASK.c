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
 int /*<<< orphan*/  MDIO_XS_DEVAD ; 
 int /*<<< orphan*/  MDIO_XS_SFX7101_XGXS_TEST1 ; 
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,struct elink_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC1(struct elink_phy *phy,
				       struct elink_params *params)
{
	struct bxe_softc *sc = params->sc;
	/* SFX7101_XGXS_TEST1 */
	FUNC0(sc, phy,
			 MDIO_XS_DEVAD, MDIO_XS_SFX7101_XGXS_TEST1, 0x100);
}