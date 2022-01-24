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
typedef  int u_int16_t ;
struct my_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct my_softc*) ; 
 int /*<<< orphan*/  PHY_BMCR ; 
 int PHY_BMCR_AUTONEGENBL ; 
 int PHY_BMCR_AUTONEGRSTR ; 
 int PHY_BMCR_RESET ; 
 int FUNC2 (struct my_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct my_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC4(struct my_softc * sc)
{
	u_int16_t       phy_sts = 0;

	FUNC1(sc);

	FUNC3(sc, PHY_BMCR, PHY_BMCR_RESET);
	FUNC0(500);
	while (FUNC2(sc, PHY_BMCR) & PHY_BMCR_RESET);

	phy_sts = FUNC2(sc, PHY_BMCR);
	phy_sts |= PHY_BMCR_AUTONEGENBL | PHY_BMCR_AUTONEGRSTR;
	FUNC3(sc, PHY_BMCR, phy_sts);

	return;
}