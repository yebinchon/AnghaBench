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
 int /*<<< orphan*/  BRGPHY_MII_AUXCTL ; 
 int FUNC0 (struct mii_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mii_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(struct mii_softc *sc)
{
	uint32_t	val;

	/* Enable Ethernet@WireSpeed. */
	FUNC1(sc, BRGPHY_MII_AUXCTL, 0x7007);
	val = FUNC0(sc, BRGPHY_MII_AUXCTL);
	FUNC1(sc, BRGPHY_MII_AUXCTL, val | (1 << 15) | (1 << 4));
}