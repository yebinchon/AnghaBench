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
struct rtwn_softc {struct r92c_softc* sc_priv; } ;
struct r92c_softc {int /*<<< orphan*/  (* rs_scan_start ) (struct ieee80211com*) ;} ;
struct ieee80211com {struct rtwn_softc* ic_softc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rtwn_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtwn_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtwn_softc*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211com*) ; 

void
FUNC4(struct ieee80211com *ic)
{
	struct rtwn_softc *sc = ic->ic_softc;
	struct r92c_softc *rs = sc->sc_priv;

	FUNC0(sc);
	/* Set gain for scanning. */
	FUNC2(sc, 0x20);
	FUNC1(sc);

	rs->rs_scan_start(ic);
}