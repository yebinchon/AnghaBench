
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ural_softc {int dummy; } ;
struct ieee80211_channel {int dummy; } ;


 scalar_t__ IEEE80211_IS_CHAN_5GHZ (struct ieee80211_channel const*) ;
 scalar_t__ IEEE80211_IS_CHAN_ANYG (struct ieee80211_channel const*) ;
 int RAL_TXRX_CSR11 ;
 int ural_write (struct ural_softc*,int ,int) ;

__attribute__((used)) static void
ural_set_basicrates(struct ural_softc *sc, const struct ieee80211_channel *c)
{


 if (IEEE80211_IS_CHAN_5GHZ(c)) {

  ural_write(sc, RAL_TXRX_CSR11, 0x150);
 } else if (IEEE80211_IS_CHAN_ANYG(c)) {

  ural_write(sc, RAL_TXRX_CSR11, 0x15f);
 } else {

  ural_write(sc, RAL_TXRX_CSR11, 0x3);
 }
}
