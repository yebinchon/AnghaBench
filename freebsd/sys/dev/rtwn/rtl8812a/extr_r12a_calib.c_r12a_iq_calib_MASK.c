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
struct rtwn_softc {int sc_flags; } ;

/* Variables and functions */
 int RTWN_FW_LOADED ; 
 int /*<<< orphan*/  FUNC0 (struct rtwn_softc*) ; 
 scalar_t__ FUNC1 (struct rtwn_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtwn_softc*) ; 

void
FUNC3(struct rtwn_softc *sc)
{
#ifndef RTWN_WITHOUT_UCODE
	if ((sc->sc_flags & RTWN_FW_LOADED) &&
	    FUNC1(sc))
		FUNC0(sc);
	else
#endif
		FUNC2(sc);
}