
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wmeParams {int wmep_aifsn; int wmep_txopLimit; int wmep_logcwmax; int wmep_logcwmin; } ;
struct mwl_txq {int qnum; } ;
struct ieee80211com {int dummy; } ;
struct mwl_softc {int sc_dev; struct mwl_hal* sc_mh; struct mwl_txq** sc_ac2q; struct ieee80211com sc_ic; } ;
struct mwl_hal {int dummy; } ;
struct chanAccParams {struct wmeParams* cap_wmeParams; } ;


 int MWL_EXPONENT_TO_VALUE (int ) ;
 int device_printf (int ,char*,int ) ;
 int * ieee80211_wme_acnames ;
 int ieee80211_wme_ic_getparams (struct ieee80211com*,struct chanAccParams*) ;
 scalar_t__ mwl_hal_setedcaparams (struct mwl_hal*,int ,int,int,int,int) ;

__attribute__((used)) static int
mwl_txq_update(struct mwl_softc *sc, int ac)
{

 struct ieee80211com *ic = &sc->sc_ic;
 struct chanAccParams chp;
 struct mwl_txq *txq = sc->sc_ac2q[ac];
 struct wmeParams *wmep;
 struct mwl_hal *mh = sc->sc_mh;
 int aifs, cwmin, cwmax, txoplim;

 ieee80211_wme_ic_getparams(ic, &chp);
 wmep = &chp.cap_wmeParams[ac];

 aifs = wmep->wmep_aifsn;

 cwmin = ((1<<wmep->wmep_logcwmin)-1);
 cwmax = ((1<<wmep->wmep_logcwmax)-1);
 txoplim = wmep->wmep_txopLimit;

 if (mwl_hal_setedcaparams(mh, txq->qnum, cwmin, cwmax, aifs, txoplim)) {
  device_printf(sc->sc_dev, "unable to update hardware queue "
   "parameters for %s traffic!\n",
   ieee80211_wme_acnames[ac]);
  return 0;
 }
 return 1;

}
