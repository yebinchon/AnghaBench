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
struct ieee80211com {scalar_t__ ic_nrunning; scalar_t__ ic_promisc; struct bwi_softc* ic_softc; } ;
struct bwi_softc {int sc_flags; TYPE_1__* sc_cur_regwin; } ;
struct bwi_mac {int dummy; } ;
struct TYPE_2__ {scalar_t__ rw_type; } ;

/* Variables and functions */
 int BWI_F_PROMISC ; 
 int BWI_F_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (struct bwi_softc*) ; 
 scalar_t__ BWI_REGWIN_T_MAC ; 
 int /*<<< orphan*/  FUNC1 (struct bwi_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct bwi_softc*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bwi_mac*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct bwi_softc*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211com*) ; 

__attribute__((used)) static void
FUNC7(struct ieee80211com *ic)
{
	struct bwi_softc *sc = ic->ic_softc;
	int startall = 0;

	FUNC0(sc);
	if (ic->ic_nrunning > 0) {
		struct bwi_mac *mac;
		int promisc = -1;

		FUNC2(sc->sc_cur_regwin->rw_type == BWI_REGWIN_T_MAC,
		    ("current regwin type %d",
		    sc->sc_cur_regwin->rw_type));
		mac = (struct bwi_mac *)sc->sc_cur_regwin;

		if (ic->ic_promisc > 0 && (sc->sc_flags & BWI_F_PROMISC) == 0) {
			promisc = 1;
			sc->sc_flags |= BWI_F_PROMISC;
		} else if (ic->ic_promisc == 0 &&
		    (sc->sc_flags & BWI_F_PROMISC) != 0) {
			promisc = 0;
			sc->sc_flags &= ~BWI_F_PROMISC;
		}

		if (promisc >= 0)
			FUNC4(mac, promisc);
	}
	if (ic->ic_nrunning > 0) {
		if ((sc->sc_flags & BWI_F_RUNNING) == 0) {
			FUNC3(sc, 1);
			startall = 1;
		}
	} else if (sc->sc_flags & BWI_F_RUNNING)
		FUNC5(sc, 1);
	FUNC1(sc);
	if (startall)
		FUNC6(ic);
}