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
typedef  int /*<<< orphan*/  uint32_t ;
struct mii_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MII_KSZPHY_EXTREG ; 
 int /*<<< orphan*/  MII_KSZPHY_EXTREG_READ ; 
 int /*<<< orphan*/  FUNC0 (struct mii_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mii_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint32_t
FUNC2(struct mii_softc *sc, uint32_t reg)
{

	FUNC1(sc, MII_KSZPHY_EXTREG, reg);

	return (FUNC0(sc, MII_KSZPHY_EXTREG_READ));
}