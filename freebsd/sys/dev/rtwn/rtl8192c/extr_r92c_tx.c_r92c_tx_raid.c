
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ieee80211com {int ic_curmode; struct ieee80211_channel* ic_curchan; } ;
struct rtwn_softc {int sc_dev; struct ieee80211com sc_ic; } ;
struct r92c_tx_desc {int txdw1; } ;
struct ieee80211vap {int iv_flags; int iv_flags_ht; } ;
struct ieee80211_node {int ni_flags; struct ieee80211_channel* ni_chan; struct ieee80211vap* ni_vap; } ;
struct ieee80211_channel {int dummy; } ;
typedef enum ieee80211_phymode { ____Placeholder_ieee80211_phymode } ieee80211_phymode ;


 struct ieee80211_channel* IEEE80211_CHAN_ANYC ;
 int IEEE80211_FHT_PUREN ;
 int IEEE80211_F_PUREG ;



 int IEEE80211_NODE_HT ;
 int R92C_RAID_11B ;
 int R92C_RAID_11BG ;
 int R92C_RAID_11BGN ;
 int R92C_RAID_11G ;
 int R92C_RAID_11N ;
 int R92C_TXDW1_RAID ;
 int SM (int ,int ) ;
 int device_printf (int ,char*,int) ;
 int htole32 (int ) ;
 int ieee80211_chan2mode (struct ieee80211_channel*) ;

__attribute__((used)) static void
r92c_tx_raid(struct rtwn_softc *sc, struct r92c_tx_desc *txd,
    struct ieee80211_node *ni, int ismcast)
{
 struct ieee80211com *ic = &sc->sc_ic;
 struct ieee80211vap *vap = ni->ni_vap;
 struct ieee80211_channel *chan;
 enum ieee80211_phymode mode;
 uint8_t raid;

 chan = (ni->ni_chan != IEEE80211_CHAN_ANYC) ?
  ni->ni_chan : ic->ic_curchan;
 mode = ieee80211_chan2mode(chan);


 if (ismcast || !(ni->ni_flags & IEEE80211_NODE_HT)) {
  switch (mode) {
  case 130:
  case 129:
   break;
  case 128:
   mode = 129;
   break;
  default:
   device_printf(sc->sc_dev, "unknown mode(1) %d!\n",
       ic->ic_curmode);
   return;
  }
 }

 switch (mode) {
 case 130:
  raid = R92C_RAID_11B;
  break;
 case 129:
  if (vap->iv_flags & IEEE80211_F_PUREG)
   raid = R92C_RAID_11G;
  else
   raid = R92C_RAID_11BG;
  break;
 case 128:
  if (vap->iv_flags_ht & IEEE80211_FHT_PUREN)
   raid = R92C_RAID_11N;
  else
   raid = R92C_RAID_11BGN;
  break;
 default:
  device_printf(sc->sc_dev, "unknown mode(2) %d!\n", mode);
  return;
 }

 txd->txdw1 |= htole32(SM(R92C_TXDW1_RAID, raid));
}
