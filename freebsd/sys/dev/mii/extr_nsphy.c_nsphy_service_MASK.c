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
struct mii_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EJUSTRETURN ; 
#define  MII_MEDIACHG 130 
 int /*<<< orphan*/  MII_NSPHY_PCR ; 
#define  MII_POLLSTAT 129 
#define  MII_TICK 128 
 int PCR_CIMDIS ; 
 int PCR_FLINK100 ; 
 int PCR_LED4MODE ; 
 int FUNC0 (struct mii_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mii_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct mii_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mii_softc*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct mii_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct mii_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct mii_softc*,int) ; 

__attribute__((used)) static int
FUNC7(struct mii_softc *sc, struct mii_data *mii, int cmd)
{
	int reg;

	switch (cmd) {
	case MII_POLLSTAT:
		break;

	case MII_MEDIACHG:
		reg = FUNC0(sc, MII_NSPHY_PCR);

		/*
		 * Set up the PCR to use LED4 to indicate full-duplex
		 * in both 10baseT and 100baseTX modes.
		 */
		reg |= PCR_LED4MODE;

		/*
		 * Make sure Carrier Integrity Monitor function is
		 * disabled (normal for Node operation, but sometimes
		 * it's not set?!)
		 */
		reg |= PCR_CIMDIS;

		/*
		 * Make sure "force link good" is set to normal mode.
		 * It's only intended for debugging.
		 */
		reg |= PCR_FLINK100;

		/*
		 * Mystery bits which are supposedly `reserved',
		 * but we seem to need to set them when the PHY
		 * is connected to some interfaces:
		 *
		 * 0x0400 is needed for fxp
		 *        (Intel EtherExpress Pro 10+/100B, 82557 chip)
		 *        (nsphy with a DP83840 chip)
		 * 0x0100 may be needed for some other card
		 */
		reg |= 0x0100 | 0x0400;

		if (FUNC3(sc, "fxp"))
			FUNC2(sc, MII_NSPHY_PCR, reg);

		FUNC4(sc);
		break;

	case MII_TICK:
		if (FUNC5(sc) == EJUSTRETURN)
			return (0);
		break;
	}

	/* Update the media status. */
	FUNC1(sc);

	/* Callback if something changed. */
	FUNC6(sc, cmd);
	return (0);
}