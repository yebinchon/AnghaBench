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
typedef  int u_int ;
struct ieee80211com {int dummy; } ;
struct run_softc {int mac_ver; struct ieee80211com sc_ic; } ;
struct ieee80211_channel {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int IEEE80211_CHAN_ANY ; 
 int FUNC0 (struct ieee80211com*,struct ieee80211_channel*) ; 
 int /*<<< orphan*/  FUNC1 (struct run_softc*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct run_softc*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct run_softc*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct run_softc*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct run_softc*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct run_softc*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct run_softc*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct run_softc*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct run_softc*,int) ; 

__attribute__((used)) static int
FUNC10(struct run_softc *sc, struct ieee80211_channel *c)
{
	struct ieee80211com *ic = &sc->sc_ic;
	u_int chan, group;

	chan = FUNC0(ic, c);
	if (chan == 0 || chan == IEEE80211_CHAN_ANY)
		return (EINVAL);

	if (sc->mac_ver == 0x5592)
		FUNC8(sc, chan);
	else if (sc->mac_ver >= 0x5390)
		FUNC7(sc, chan);
	else if (sc->mac_ver == 0x3593)
		FUNC6(sc, chan);
	else if (sc->mac_ver == 0x3572)
		FUNC5(sc, chan);
	else if (sc->mac_ver >= 0x3070)
		FUNC4(sc, chan);
	else
		FUNC3(sc, chan);

	/* determine channel group */
	if (chan <= 14)
		group = 0;
	else if (chan <= 64)
		group = 1;
	else if (chan <= 128)
		group = 2;
	else
		group = 3;

	/* XXX necessary only when group has changed! */
	FUNC9(sc, group);

	FUNC1(sc, 10);

	/* Perform IQ calibration. */
	if (sc->mac_ver >= 0x5392)
		FUNC2(sc, chan);

	return (0);
}