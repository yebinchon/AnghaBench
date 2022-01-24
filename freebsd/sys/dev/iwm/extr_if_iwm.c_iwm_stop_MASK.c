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
struct iwm_softc {int /*<<< orphan*/  sc_flags; scalar_t__ sc_tx_timer; int /*<<< orphan*/  sc_generation; } ;

/* Variables and functions */
 int /*<<< orphan*/  IWM_FLAG_HW_INITED ; 
 int /*<<< orphan*/  IWM_FLAG_SCAN_RUNNING ; 
 int /*<<< orphan*/  IWM_FLAG_STOPPED ; 
 int /*<<< orphan*/  FUNC0 (struct iwm_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct iwm_softc*) ; 

__attribute__((used)) static void
FUNC2(struct iwm_softc *sc)
{

	sc->sc_flags &= ~IWM_FLAG_HW_INITED;
	sc->sc_flags |= IWM_FLAG_STOPPED;
	sc->sc_generation++;
	FUNC0(sc);
	sc->sc_tx_timer = 0;
	FUNC1(sc);
	sc->sc_flags &= ~IWM_FLAG_SCAN_RUNNING;
}