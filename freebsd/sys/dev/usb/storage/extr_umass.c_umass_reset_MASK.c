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
struct umass_softc {size_t sc_last_xfer_index; int /*<<< orphan*/ * sc_xfer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct umass_softc*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  UDMASS_GEN ; 
 int /*<<< orphan*/  FUNC1 (struct umass_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct umass_softc *sc)
{
	FUNC0(sc, UDMASS_GEN, "resetting device\n");

	/*
	 * stop the last transfer, if not already stopped:
	 */
	FUNC2(sc->sc_xfer[sc->sc_last_xfer_index]);
	FUNC1(sc, 0);
}