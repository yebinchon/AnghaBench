
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_softc {int dummy; } ;
struct ieee80211_channel {int dummy; } ;


 scalar_t__ IEEE80211_IS_CHAN_HT40U (struct ieee80211_channel*) ;
 int R92C_TXDW4_SCO_SCA ;
 int R92C_TXDW4_SCO_SCB ;

__attribute__((used)) static int
r92c_tx_get_sco(struct rtwn_softc *sc, struct ieee80211_channel *c)
{
 if (IEEE80211_IS_CHAN_HT40U(c))
  return (R92C_TXDW4_SCO_SCA);
 else
  return (R92C_TXDW4_SCO_SCB);
}
