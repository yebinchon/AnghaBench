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
 int /*<<< orphan*/  MDIO_PMA_DEVAD ; 
 int /*<<< orphan*/  MDIO_PMA_LASI_CTRL ; 
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,struct elink_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct elink_params*,struct elink_phy*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct elink_params*,struct elink_phy*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct elink_phy *phy,
				  struct elink_params *params)
{
	struct bxe_softc *sc = params->sc;

	/* Enable/Disable PHY transmitter output */
	FUNC1(params, phy, 1);

	/* Disable Transmitter */
	FUNC2(params, phy, 0);
	/* Clear LASI */
	FUNC0(sc, phy, MDIO_PMA_DEVAD, MDIO_PMA_LASI_CTRL, 0);

}