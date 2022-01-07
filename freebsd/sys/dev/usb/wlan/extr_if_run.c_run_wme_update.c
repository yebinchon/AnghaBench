
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wmeParams {int wmep_logcwmax; int wmep_logcwmin; int wmep_aifsn; int wmep_txopLimit; } ;
struct run_softc {int dummy; } ;
struct ieee80211com {struct run_softc* ic_softc; } ;
struct chanAccParams {struct wmeParams* cap_wmeParams; } ;


 int RT2860_EDCA_AC_CFG (int) ;
 int RT2860_WMM_AIFSN_CFG ;
 int RT2860_WMM_CWMAX_CFG ;
 int RT2860_WMM_CWMIN_CFG ;
 int RT2860_WMM_TXOP0_CFG ;
 int RT2860_WMM_TXOP1_CFG ;
 int RUN_DEBUG_USB ;
 int RUN_DPRINTF (struct run_softc*,int ,char*) ;
 int RUN_LOCK (struct run_softc*) ;
 int RUN_UNLOCK (struct run_softc*) ;
 size_t WME_AC_BE ;
 size_t WME_AC_BK ;
 size_t WME_AC_VI ;
 size_t WME_AC_VO ;
 int WME_NUM_AC ;
 int ieee80211_wme_ic_getparams (struct ieee80211com*,struct chanAccParams*) ;
 int run_write (struct run_softc*,int ,int) ;

__attribute__((used)) static int
run_wme_update(struct ieee80211com *ic)
{
 struct chanAccParams chp;
 struct run_softc *sc = ic->ic_softc;
 const struct wmeParams *ac;
 int aci, error = 0;

 ieee80211_wme_ic_getparams(ic, &chp);
 ac = chp.cap_wmeParams;


 RUN_LOCK(sc);
 for (aci = 0; aci < WME_NUM_AC; aci++) {
  error = run_write(sc, RT2860_EDCA_AC_CFG(aci),
      ac[aci].wmep_logcwmax << 16 |
      ac[aci].wmep_logcwmin << 12 |
      ac[aci].wmep_aifsn << 8 |
      ac[aci].wmep_txopLimit);
  if (error) goto err;
 }


 error = run_write(sc, RT2860_WMM_AIFSN_CFG,
     ac[WME_AC_VO].wmep_aifsn << 12 |
     ac[WME_AC_VI].wmep_aifsn << 8 |
     ac[WME_AC_BK].wmep_aifsn << 4 |
     ac[WME_AC_BE].wmep_aifsn);
 if (error) goto err;
 error = run_write(sc, RT2860_WMM_CWMIN_CFG,
     ac[WME_AC_VO].wmep_logcwmin << 12 |
     ac[WME_AC_VI].wmep_logcwmin << 8 |
     ac[WME_AC_BK].wmep_logcwmin << 4 |
     ac[WME_AC_BE].wmep_logcwmin);
 if (error) goto err;
 error = run_write(sc, RT2860_WMM_CWMAX_CFG,
     ac[WME_AC_VO].wmep_logcwmax << 12 |
     ac[WME_AC_VI].wmep_logcwmax << 8 |
     ac[WME_AC_BK].wmep_logcwmax << 4 |
     ac[WME_AC_BE].wmep_logcwmax);
 if (error) goto err;
 error = run_write(sc, RT2860_WMM_TXOP0_CFG,
     ac[WME_AC_BK].wmep_txopLimit << 16 |
     ac[WME_AC_BE].wmep_txopLimit);
 if (error) goto err;
 error = run_write(sc, RT2860_WMM_TXOP1_CFG,
     ac[WME_AC_VO].wmep_txopLimit << 16 |
     ac[WME_AC_VI].wmep_txopLimit);

err:
 RUN_UNLOCK(sc);
 if (error)
  RUN_DPRINTF(sc, RUN_DEBUG_USB, "WME update failed\n");

 return (error);
}
