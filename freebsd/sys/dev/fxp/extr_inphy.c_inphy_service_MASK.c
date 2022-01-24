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
struct mii_data {int /*<<< orphan*/  mii_ifp; } ;

/* Variables and functions */
 int /*<<< orphan*/  EJUSTRETURN ; 
 int IFF_UP ; 
#define  MII_MEDIACHG 130 
#define  MII_POLLSTAT 129 
#define  MII_TICK 128 
 int /*<<< orphan*/  FUNC0 (struct mii_softc*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mii_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct mii_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct mii_softc*,int) ; 

__attribute__((used)) static int
FUNC5(struct mii_softc *sc, struct mii_data *mii, int cmd)
{

	switch (cmd) {
	case MII_POLLSTAT:
		break;

	case MII_MEDIACHG:
		/*
		 * If the interface is not up, don't do anything.
		 */
		if ((FUNC1(mii->mii_ifp) & IFF_UP) == 0)
			break;

		FUNC2(sc);
		break;

	case MII_TICK:
		if (FUNC3(sc) == EJUSTRETURN)
			return (0);
		break;
	}

	/* Update the media status. */
	FUNC0(sc);

	/* Callback if something changed. */
	FUNC4(sc, cmd);
	return (0);
}