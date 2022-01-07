
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ieee80211com {int ic_curmode; struct ieee80211_channel* ic_curchan; } ;
struct rtwn_softc {int ntxchains; int sc_dev; struct ieee80211com sc_ic; } ;
struct r12a_tx_desc {int txdw1; } ;
struct ieee80211vap {int iv_flags; } ;
struct ieee80211_node {int ni_flags; struct ieee80211_channel* ni_chan; struct ieee80211vap* ni_vap; } ;
struct ieee80211_channel {int dummy; } ;
typedef enum ieee80211_phymode { ____Placeholder_ieee80211_phymode } ieee80211_phymode ;


 struct ieee80211_channel* IEEE80211_CHAN_ANYC ;
 int IEEE80211_F_PUREG ;
 int IEEE80211_IS_CHAN_HT40 (struct ieee80211_channel*) ;





 int IEEE80211_NODE_HT ;
 int R12A_RAID_11B ;
 int R12A_RAID_11BG ;
 int R12A_RAID_11BGN_1 ;
 int R12A_RAID_11BGN_1_40 ;
 int R12A_RAID_11BGN_2 ;
 int R12A_RAID_11BGN_2_40 ;
 int R12A_RAID_11G ;
 int R12A_RAID_11GN_1 ;
 int R12A_RAID_11GN_2 ;
 int R12A_TXDW1_RAID ;
 int SM (int ,int ) ;
 int device_printf (int ,char*,int) ;
 int htole32 (int ) ;
 int ieee80211_chan2mode (struct ieee80211_channel*) ;

__attribute__((used)) static void
r12a_tx_raid(struct rtwn_softc *sc, struct r12a_tx_desc *txd,
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
  case 132:
  case 131:
  case 130:
   break;
  case 129:
   mode = 132;
   break;
  case 128:
   mode = 130;
   break;
  default:
   device_printf(sc->sc_dev, "unknown mode(1) %d!\n",
       ic->ic_curmode);
   return;
  }
 }

 switch (mode) {
 case 132:
  raid = R12A_RAID_11G;
  break;
 case 131:
  raid = R12A_RAID_11B;
  break;
 case 130:
  if (vap->iv_flags & IEEE80211_F_PUREG)
   raid = R12A_RAID_11G;
  else
   raid = R12A_RAID_11BG;
  break;
 case 129:
  if (sc->ntxchains == 1)
   raid = R12A_RAID_11GN_1;
  else
   raid = R12A_RAID_11GN_2;
  break;
 case 128:
  if (sc->ntxchains == 1) {
   if (IEEE80211_IS_CHAN_HT40(chan))
    raid = R12A_RAID_11BGN_1_40;
   else
    raid = R12A_RAID_11BGN_1;
  } else {
   if (IEEE80211_IS_CHAN_HT40(chan))
    raid = R12A_RAID_11BGN_2_40;
   else
    raid = R12A_RAID_11BGN_2;
  }
  break;
 default:

  device_printf(sc->sc_dev, "unknown mode(2) %d!\n", mode);
  return;
 }

 txd->txdw1 |= htole32(SM(R12A_TXDW1_RAID, raid));
}
