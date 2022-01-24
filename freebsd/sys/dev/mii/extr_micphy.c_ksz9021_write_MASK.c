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
typedef  int uint32_t ;
struct mii_softc {int dummy; } ;

/* Variables and functions */
 int KSZPHY_EXTREG_WRITE ; 
 int /*<<< orphan*/  MII_KSZPHY_EXTREG ; 
 int /*<<< orphan*/  MII_KSZPHY_EXTREG_WRITE ; 
 int /*<<< orphan*/  FUNC0 (struct mii_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC1(struct mii_softc *sc, uint32_t reg, uint32_t val)
{

	FUNC0(sc, MII_KSZPHY_EXTREG, KSZPHY_EXTREG_WRITE | reg);
	FUNC0(sc, MII_KSZPHY_EXTREG_WRITE, val);
}