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
typedef  int /*<<< orphan*/  uint32_t ;
struct ieee80211com {int /*<<< orphan*/  ic_nchans; int /*<<< orphan*/  ic_channels; } ;
struct iwn_softc {int /*<<< orphan*/ * eeprom_channels; struct ieee80211com sc_ic; } ;
struct iwn_eeprom_chan {int dummy; } ;
struct TYPE_2__ {int nchan; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_CHAN_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* iwn_bands ; 
 int /*<<< orphan*/  FUNC1 (struct iwn_softc*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct iwn_softc*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct iwn_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC4(struct iwn_softc *sc, int n, uint32_t addr)
{
	struct ieee80211com *ic = &sc->sc_ic;

	FUNC3(sc, addr, &sc->eeprom_channels[n],
	    iwn_bands[n].nchan * sizeof (struct iwn_eeprom_chan));

	if (n < 5) {
		FUNC1(sc, n, IEEE80211_CHAN_MAX, &ic->ic_nchans,
		    ic->ic_channels);
	} else {
		FUNC2(sc, n, IEEE80211_CHAN_MAX, &ic->ic_nchans,
		    ic->ic_channels);
	}
	FUNC0(ic->ic_channels, ic->ic_nchans);
}