
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wmeParams {int wmep_txopLimit; int wmep_aifsn; int wmep_logcwmin; int wmep_logcwmax; } ;
struct ieee80211com {int dummy; } ;
struct otus_softc {struct ieee80211com sc_ic; } ;
struct chanAccParams {struct wmeParams* cap_wmeParams; } ;


 int AIFS (int ) ;
 int AR_MAC_REG_AC0_CW ;
 int AR_MAC_REG_AC1_AC0_AIFS ;
 int AR_MAC_REG_AC1_AC0_TXOP ;
 int AR_MAC_REG_AC1_CW ;
 int AR_MAC_REG_AC2_CW ;
 int AR_MAC_REG_AC3_AC2_AIFS ;
 int AR_MAC_REG_AC3_AC2_TXOP ;
 int AR_MAC_REG_AC3_CW ;
 int AR_MAC_REG_AC4_CW ;
 int EXP2 (int ) ;
 int OTUS_LOCK_ASSERT (struct otus_softc*) ;
 size_t WME_AC_BE ;
 size_t WME_AC_BK ;
 size_t WME_AC_VI ;
 size_t WME_AC_VO ;
 int ieee80211_wme_ic_getparams (struct ieee80211com*,struct chanAccParams*) ;
 int otus_write (struct otus_softc*,int ,int) ;
 int otus_write_barrier (struct otus_softc*) ;

__attribute__((used)) static void
otus_updateedca_locked(struct otus_softc *sc)
{


 struct chanAccParams chp;
 struct ieee80211com *ic = &sc->sc_ic;
 const struct wmeParams *edca;

 ieee80211_wme_ic_getparams(ic, &chp);

 OTUS_LOCK_ASSERT(sc);

 edca = chp.cap_wmeParams;


 otus_write(sc, AR_MAC_REG_AC0_CW,
     ((1 << (edca[WME_AC_BE].wmep_logcwmax)) - 1) << 16 |
     ((1 << (edca[WME_AC_BE].wmep_logcwmin)) - 1));
 otus_write(sc, AR_MAC_REG_AC1_CW,
     ((1 << (edca[WME_AC_BK].wmep_logcwmax)) - 1) << 16 |
     ((1 << (edca[WME_AC_BK].wmep_logcwmin)) - 1));
 otus_write(sc, AR_MAC_REG_AC2_CW,
     ((1 << (edca[WME_AC_VI].wmep_logcwmax)) - 1) << 16 |
     ((1 << (edca[WME_AC_VI].wmep_logcwmin)) - 1));
 otus_write(sc, AR_MAC_REG_AC3_CW,
     ((1 << (edca[WME_AC_VO].wmep_logcwmax)) - 1) << 16 |
     ((1 << (edca[WME_AC_VO].wmep_logcwmin)) - 1));
 otus_write(sc, AR_MAC_REG_AC4_CW,
     ((1 << (edca[WME_AC_VO].wmep_logcwmax)) - 1) << 16 |
     ((1 << (edca[WME_AC_VO].wmep_logcwmin)) - 1));


 otus_write(sc, AR_MAC_REG_AC1_AC0_AIFS,
     ((edca[WME_AC_VI].wmep_aifsn) * 9 + 10) << 24 |
     ((edca[WME_AC_BK].wmep_aifsn) * 9 + 10) << 12 |
     ((edca[WME_AC_BE].wmep_aifsn) * 9 + 10));
 otus_write(sc, AR_MAC_REG_AC3_AC2_AIFS,
     ((edca[WME_AC_VO].wmep_aifsn) * 9 + 10) << 16 |
     ((edca[WME_AC_VO].wmep_aifsn) * 9 + 10) << 4 |
     ((edca[WME_AC_VI].wmep_aifsn) * 9 + 10) >> 8);


 otus_write(sc, AR_MAC_REG_AC1_AC0_TXOP,
     edca[WME_AC_BK].wmep_txopLimit << 16 |
     edca[WME_AC_BE].wmep_txopLimit);
 otus_write(sc, AR_MAC_REG_AC3_AC2_TXOP,
     edca[WME_AC_VO].wmep_txopLimit << 16 |
     edca[WME_AC_VI].wmep_txopLimit);



 (void)otus_write_barrier(sc);



}
