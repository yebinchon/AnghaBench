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
struct iwn_softc {struct iwn_eeprom_chan** eeprom_channels; } ;
struct iwn_eeprom_chan {int dummy; } ;
struct ieee80211_channel {int ic_extieee; int ic_ieee; } ;
struct TYPE_2__ {int nchan; int* chan; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ieee80211_channel*) ; 
 int FUNC1 (struct ieee80211_channel*) ; 
 scalar_t__ FUNC2 (struct ieee80211_channel*) ; 
 scalar_t__ FUNC3 (struct ieee80211_channel*) ; 
 TYPE_1__* iwn_bands ; 

__attribute__((used)) static struct iwn_eeprom_chan *
FUNC4(struct iwn_softc *sc, struct ieee80211_channel *c)
{
	int band, chan, i, j;

	if (FUNC2(c)) {
		band = FUNC0(c) ? 6 : 5;
		if (FUNC3(c))
			chan = c->ic_extieee;
		else
			chan = c->ic_ieee;
		for (i = 0; i < iwn_bands[band].nchan; i++) {
			if (iwn_bands[band].chan[i] == chan)
				return &sc->eeprom_channels[band][i];
		}
	} else {
		for (j = 0; j < 5; j++) {
			for (i = 0; i < iwn_bands[j].nchan; i++) {
				if (iwn_bands[j].chan[i] == c->ic_ieee &&
				    ((j == 0) ^ FUNC1(c)) == 1)
					return &sc->eeprom_channels[j][i];
			}
		}
	}
	return NULL;
}