#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ ic_nrunning; } ;
struct mwl_softc {TYPE_1__ sc_ic; } ;

/* Variables and functions */
 int EDOOFUS ; 
 int /*<<< orphan*/  FUNC0 (struct mwl_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct mwl_softc*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (struct mwl_softc*) ; 

void
FUNC4(struct mwl_softc *sc)
{
	int error = EDOOFUS;

	FUNC0(sc);
	if (sc->sc_ic.ic_nrunning > 0)
		error = FUNC3(sc);
	FUNC1(sc);

	if (error == 0)
		FUNC2(&sc->sc_ic);	/* start all vap's */
}