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
struct urtw_softc {int sc_flags; int /*<<< orphan*/ * sc_xfer; } ;

/* Variables and functions */
 int URTW_8187B_N_XFERS ; 
 int URTW_8187L_N_XFERS ; 
 int /*<<< orphan*/  FUNC0 (struct urtw_softc*) ; 
 int URTW_RTL8187B ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct urtw_softc *sc)
{
	int i, max;

	FUNC0(sc);

	max = (sc->sc_flags & URTW_RTL8187B) ? URTW_8187B_N_XFERS :
	    URTW_8187L_N_XFERS;

	/* abort any pending transfers */
	for (i = 0; i < max; i++)
		FUNC1(sc->sc_xfer[i]);
}