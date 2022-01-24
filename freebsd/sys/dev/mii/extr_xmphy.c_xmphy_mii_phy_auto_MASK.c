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
struct mii_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EJUSTRETURN ; 
 int FUNC1 (struct mii_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mii_softc*,int /*<<< orphan*/ ,int) ; 
 int XMPHY_ANAR_FDX ; 
 int XMPHY_ANAR_HDX ; 
 int XMPHY_BMCR_AUTOEN ; 
 int XMPHY_BMCR_STARTNEG ; 
 int /*<<< orphan*/  XMPHY_MII_ANAR ; 
 int /*<<< orphan*/  XMPHY_MII_BMCR ; 

__attribute__((used)) static int
FUNC3(struct mii_softc *mii)
{
	int anar = 0;

	anar = FUNC1(mii, XMPHY_MII_ANAR);
	anar |= XMPHY_ANAR_FDX|XMPHY_ANAR_HDX;
	FUNC2(mii, XMPHY_MII_ANAR, anar);
	FUNC0(1000);
	FUNC2(mii, XMPHY_MII_BMCR,
	    XMPHY_BMCR_AUTOEN | XMPHY_BMCR_STARTNEG);

	return (EJUSTRETURN);
}