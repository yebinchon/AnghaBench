
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_softc {int sc_ht40; } ;
struct r88e_rx_phystat {int chan; } ;
struct ieee80211_rx_stats {int r_flags; int c_ieee; int c_freq; } ;


 int IEEE80211_CHAN_2GHZ ;
 int IEEE80211_R_FREQ ;
 int IEEE80211_R_IEEE ;
 int ieee80211_ieee2mhz (int ,int ) ;
 int r92c_get_rx_stats (struct rtwn_softc*,struct ieee80211_rx_stats*,void const*,void const*) ;

void
r88e_get_rx_stats(struct rtwn_softc *sc, struct ieee80211_rx_stats *rxs,
    const void *desc, const void *physt_ptr)
{
 const struct r88e_rx_phystat *physt = physt_ptr;

 r92c_get_rx_stats(sc, rxs, desc, physt_ptr);

 if (!sc->sc_ht40) {
  rxs->r_flags |= IEEE80211_R_IEEE | IEEE80211_R_FREQ;
  rxs->c_ieee = physt->chan;
  rxs->c_freq = ieee80211_ieee2mhz(rxs->c_ieee,
      IEEE80211_CHAN_2GHZ);
 }
}
