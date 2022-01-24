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
struct ieee80211com {struct ieee80211_channel* ic_curchan; struct bwi_softc* ic_softc; } ;
struct ieee80211_channel {int dummy; } ;
struct bwi_softc {int /*<<< orphan*/  sc_rates; TYPE_1__* sc_cur_regwin; } ;
struct bwi_mac {int dummy; } ;
struct TYPE_2__ {scalar_t__ rw_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bwi_softc*) ; 
 scalar_t__ BWI_REGWIN_T_MAC ; 
 int /*<<< orphan*/  FUNC1 (struct bwi_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct bwi_mac*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211com*,struct ieee80211_channel*) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_channel*) ; 

__attribute__((used)) static void
FUNC6(struct ieee80211com *ic)
{
	struct bwi_softc *sc = ic->ic_softc;
	struct ieee80211_channel *c = ic->ic_curchan;
	struct bwi_mac *mac;

	FUNC0(sc);
	FUNC2(sc->sc_cur_regwin->rw_type == BWI_REGWIN_T_MAC,
	    ("current regwin type %d", sc->sc_cur_regwin->rw_type));
	mac = (struct bwi_mac *)sc->sc_cur_regwin;
	FUNC3(mac, FUNC4(ic, c), 0);

	sc->sc_rates = FUNC5(c);
	FUNC1(sc);
}