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
#define  MII_MEDIACHG 130 
#define  MII_POLLSTAT 129 
#define  MII_TICK 128 
 int /*<<< orphan*/  FUNC0 (struct mii_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct mii_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct mii_softc*,int) ; 

__attribute__((used)) static int
FUNC3(struct mii_softc *sc, struct mii_data *mii, int cmd)
{

	switch (cmd) {
	case MII_POLLSTAT:
		break;

	case MII_MEDIACHG:
		FUNC1(sc);
		break;

	case MII_TICK:
		/*
		 * The 3Com PHY's autonegotiation doesn't need to be
		 * kicked; it continues in the background.
		 */
		break;
	}

	/* Update the media status. */
	FUNC0(sc);

	/* Callback if something changed. */
	FUNC2(sc, cmd);
	return (0);
}