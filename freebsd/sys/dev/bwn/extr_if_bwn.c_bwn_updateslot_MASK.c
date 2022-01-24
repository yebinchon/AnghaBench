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
struct ieee80211com {struct bwn_softc* ic_softc; } ;
struct bwn_softc {int sc_flags; scalar_t__ sc_curmac; } ;
struct bwn_mac {int dummy; } ;

/* Variables and functions */
 int BWN_FLAG_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (struct bwn_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct bwn_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211com*) ; 
 int /*<<< orphan*/  FUNC3 (struct bwn_mac*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct ieee80211com *ic)
{
	struct bwn_softc *sc = ic->ic_softc;
	struct bwn_mac *mac;

	FUNC0(sc);
	if (sc->sc_flags & BWN_FLAG_RUNNING) {
		mac = (struct bwn_mac *)sc->sc_curmac;
		FUNC3(mac, FUNC2(ic));
	}
	FUNC1(sc);
}