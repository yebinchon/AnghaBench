
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
struct ieee80211com {int ic_flags; int ic_rt; } ;
struct rtwn_softc {struct ieee80211com sc_ic; } ;
struct r12a_tx_desc {int txdw5; int txdw4; int txdw3; } ;
typedef enum ieee80211_protmode { ____Placeholder_ieee80211_protmode } ieee80211_protmode ;


 int IEEE80211_F_SHPREAMBLE ;


 int IEEE80211_RV (size_t) ;
 int R12A_TXDW3_CTS2SELF ;
 int R12A_TXDW3_RTSEN ;
 int R12A_TXDW4_RTSRATE ;
 int R12A_TXDW4_RTSRATE_FB_LMT ;
 int R12A_TXDW5_RTS_SHORT ;
 scalar_t__ RTWN_RATE_IS_CCK (size_t) ;
 size_t RTWN_RIDX_CCK1 ;
 size_t RTWN_RIDX_HT_MCS (int ) ;
 int SM (int ,int) ;
 int htole32 (int ) ;
 size_t ieee80211_ctl_rate (int ,int ) ;
 size_t rate2ridx (int ) ;
 int * ridx2rate ;
 size_t rtwn_ctl_mcsrate (int ,size_t) ;

__attribute__((used)) static void
r12a_tx_protection(struct rtwn_softc *sc, struct r12a_tx_desc *txd,
    enum ieee80211_protmode mode, uint8_t ridx)
{
 struct ieee80211com *ic = &sc->sc_ic;
 uint8_t rate;

 switch (mode) {
 case 129:
  txd->txdw3 |= htole32(R12A_TXDW3_CTS2SELF);
  break;
 case 128:
  txd->txdw3 |= htole32(R12A_TXDW3_RTSEN);
  break;
 default:
  break;
 }

 if (mode == 129 ||
     mode == 128) {
  if (ridx >= RTWN_RIDX_HT_MCS(0))
   rate = rtwn_ctl_mcsrate(ic->ic_rt, ridx);
  else
   rate = ieee80211_ctl_rate(ic->ic_rt, ridx2rate[ridx]);
  ridx = rate2ridx(IEEE80211_RV(rate));

  txd->txdw4 |= htole32(SM(R12A_TXDW4_RTSRATE, ridx));

  txd->txdw4 |= htole32(SM(R12A_TXDW4_RTSRATE_FB_LMT, 0xf));

  if (RTWN_RATE_IS_CCK(ridx) && ridx != RTWN_RIDX_CCK1 &&
      (ic->ic_flags & IEEE80211_F_SHPREAMBLE))
   txd->txdw5 |= htole32(R12A_TXDW5_RTS_SHORT);
 }
}
