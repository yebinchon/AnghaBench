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
struct dtsec_softc {int /*<<< orphan*/ * sc_mach; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  e_COMM_MODE_RX_AND_TX ; 

__attribute__((used)) static void
FUNC2(struct dtsec_softc *sc)
{
	if (sc->sc_mach == NULL)
		return;

	FUNC0(sc->sc_mach, e_COMM_MODE_RX_AND_TX);
	FUNC1(sc->sc_mach);
	sc->sc_mach = NULL;
}