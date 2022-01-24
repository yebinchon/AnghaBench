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
struct arswitch_softc {int dummy; } ;

/* Variables and functions */
 int AR8327_NUM_PHYS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct arswitch_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct arswitch_softc*,int) ; 

__attribute__((used)) static int
FUNC3(struct arswitch_softc *sc)
{
	int i;
	int err;

	/* pdata fetch and setup */
	err = FUNC1(sc);
	if (err != 0)
		return (err);

	/* XXX init leds */

	for (i = 0; i < AR8327_NUM_PHYS; i++) {
		/* phy fixup */
		FUNC2(sc, i);

		/* start PHY autonegotiation? */
		/* XXX is this done as part of the normal PHY setup? */

	}

	/* Let things settle */
	FUNC0(1000);

	return (0);
}