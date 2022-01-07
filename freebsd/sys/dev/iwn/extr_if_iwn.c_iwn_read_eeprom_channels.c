
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct ieee80211com {int ic_nchans; int ic_channels; } ;
struct iwn_softc {int * eeprom_channels; struct ieee80211com sc_ic; } ;
struct iwn_eeprom_chan {int dummy; } ;
struct TYPE_2__ {int nchan; } ;


 int IEEE80211_CHAN_MAX ;
 int ieee80211_sort_channels (int ,int ) ;
 TYPE_1__* iwn_bands ;
 int iwn_read_eeprom_band (struct iwn_softc*,int,int ,int *,int ) ;
 int iwn_read_eeprom_ht40 (struct iwn_softc*,int,int ,int *,int ) ;
 int iwn_read_prom_data (struct iwn_softc*,int ,int *,int) ;

__attribute__((used)) static void
iwn_read_eeprom_channels(struct iwn_softc *sc, int n, uint32_t addr)
{
 struct ieee80211com *ic = &sc->sc_ic;

 iwn_read_prom_data(sc, addr, &sc->eeprom_channels[n],
     iwn_bands[n].nchan * sizeof (struct iwn_eeprom_chan));

 if (n < 5) {
  iwn_read_eeprom_band(sc, n, IEEE80211_CHAN_MAX, &ic->ic_nchans,
      ic->ic_channels);
 } else {
  iwn_read_eeprom_ht40(sc, n, IEEE80211_CHAN_MAX, &ic->ic_nchans,
      ic->ic_channels);
 }
 ieee80211_sort_channels(ic->ic_channels, ic->ic_nchans);
}
