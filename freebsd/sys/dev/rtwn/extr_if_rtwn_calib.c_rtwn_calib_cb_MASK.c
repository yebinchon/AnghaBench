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
typedef  union sec_param {int dummy; } sec_param ;
struct rtwn_softc {scalar_t__ sc_ratectl; scalar_t__ vaps_running; scalar_t__ monvaps_running; int /*<<< orphan*/  sc_calib_to; } ;

/* Variables and functions */
 scalar_t__ RTWN_RATECTL_FW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct rtwn_softc*) ; 
 int hz ; 
 int /*<<< orphan*/  rtwn_calib_to ; 
 int /*<<< orphan*/  FUNC1 (struct rtwn_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtwn_softc*) ; 

__attribute__((used)) static void
FUNC3(struct rtwn_softc *sc, union sec_param *data)
{
	/* Do temperature compensation. */
	FUNC2(sc);

#ifndef RTWN_WITHOUT_UCODE
	if (sc->sc_ratectl == RTWN_RATECTL_FW) {
		/* Refresh per-node RSSI. */
		FUNC1(sc);
	}
#endif

	if (sc->vaps_running > sc->monvaps_running)
		FUNC0(&sc->sc_calib_to, 2*hz, rtwn_calib_to, sc);
}