
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_softc {int dummy; } ;
struct ieee80211_channel {int dummy; } ;


 scalar_t__ IEEE80211_IS_CHAN_HT40U (struct ieee80211_channel*) ;
 int R12A_TXDW5_PRIM_CHAN_20_80_2 ;
 int R12A_TXDW5_PRIM_CHAN_20_80_3 ;

__attribute__((used)) static int
r12a_get_primary_channel(struct rtwn_softc *sc, struct ieee80211_channel *c)
{

 if (IEEE80211_IS_CHAN_HT40U(c))
  return (R12A_TXDW5_PRIM_CHAN_20_80_2);
 else
  return (R12A_TXDW5_PRIM_CHAN_20_80_3);
}
