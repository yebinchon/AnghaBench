
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wmeParams {int wmep_txopLimit; int wmep_logcwmin; int wmep_logcwmax; int wmep_aifsn; } ;
struct rt2661_softc {int dummy; } ;
struct ieee80211com {struct rt2661_softc* ic_softc; } ;
struct chanAccParams {struct wmeParams* cap_wmeParams; } ;


 int RAL_WRITE (struct rt2661_softc*,int ,int) ;
 int RT2661_AC_TXOP_CSR0 ;
 int RT2661_AC_TXOP_CSR1 ;
 int RT2661_AIFSN_CSR ;
 int RT2661_CWMAX_CSR ;
 int RT2661_CWMIN_CSR ;
 size_t WME_AC_BE ;
 size_t WME_AC_BK ;
 size_t WME_AC_VI ;
 size_t WME_AC_VO ;
 int ieee80211_wme_ic_getparams (struct ieee80211com*,struct chanAccParams*) ;

__attribute__((used)) static int
rt2661_wme_update(struct ieee80211com *ic)
{
 struct rt2661_softc *sc = ic->ic_softc;
 struct chanAccParams chp;
 const struct wmeParams *wmep;

 ieee80211_wme_ic_getparams(ic, &chp);

 wmep = chp.cap_wmeParams;





 RAL_WRITE(sc, RT2661_AC_TXOP_CSR0,
     wmep[WME_AC_BE].wmep_txopLimit << 16 |
     wmep[WME_AC_BK].wmep_txopLimit);
 RAL_WRITE(sc, RT2661_AC_TXOP_CSR1,
     wmep[WME_AC_VI].wmep_txopLimit << 16 |
     wmep[WME_AC_VO].wmep_txopLimit);


 RAL_WRITE(sc, RT2661_CWMIN_CSR,
     wmep[WME_AC_BE].wmep_logcwmin << 12 |
     wmep[WME_AC_BK].wmep_logcwmin << 8 |
     wmep[WME_AC_VI].wmep_logcwmin << 4 |
     wmep[WME_AC_VO].wmep_logcwmin);


 RAL_WRITE(sc, RT2661_CWMAX_CSR,
     wmep[WME_AC_BE].wmep_logcwmax << 12 |
     wmep[WME_AC_BK].wmep_logcwmax << 8 |
     wmep[WME_AC_VI].wmep_logcwmax << 4 |
     wmep[WME_AC_VO].wmep_logcwmax);


 RAL_WRITE(sc, RT2661_AIFSN_CSR,
     wmep[WME_AC_BE].wmep_aifsn << 12 |
     wmep[WME_AC_BK].wmep_aifsn << 8 |
     wmep[WME_AC_VI].wmep_aifsn << 4 |
     wmep[WME_AC_VO].wmep_aifsn);

 return 0;
}
