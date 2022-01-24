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
struct rtwn_softc {int sc_flags; scalar_t__ sc_ratectl_sysctl; scalar_t__ sc_ratectl; } ;

/* Variables and functions */
 int /*<<< orphan*/  R92C_ACLK_MON ; 
 int /*<<< orphan*/  R92C_QUEUE_CTRL ; 
 int /*<<< orphan*/  R92C_USB_HRPWM ; 
 int RTWN_FW_LOADED ; 
 scalar_t__ RTWN_RATECTL_FW ; 
 scalar_t__ RTWN_RATECTL_NET80211 ; 
 scalar_t__ RTWN_RATECTL_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct rtwn_softc*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rtwn_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC2(struct rtwn_softc *sc)
{

	/* Setup RTS BW (equal to data BW). */
	FUNC0(sc, R92C_QUEUE_CTRL, 0x08, 0);

	/* Reset USB mode switch setting. */
	FUNC1(sc, R92C_ACLK_MON, 0);

	FUNC1(sc, R92C_USB_HRPWM, 0);

#ifndef RTWN_WITHOUT_UCODE
	if (sc->sc_flags & RTWN_FW_LOADED) {
		if (sc->sc_ratectl_sysctl == RTWN_RATECTL_FW) {
			/* TODO: implement */
			sc->sc_ratectl = RTWN_RATECTL_NET80211;
		} else
			sc->sc_ratectl = sc->sc_ratectl_sysctl;
	} else
#endif
		sc->sc_ratectl = RTWN_RATECTL_NONE;
}