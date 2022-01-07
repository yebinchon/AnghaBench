
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_vap {int id; int tsf_sync_adhoc_task; } ;
struct ieee80211com {int dummy; } ;
struct rtwn_softc {int sc_dev; struct ieee80211com sc_ic; } ;
struct ieee80211vap {int iv_opmode; } ;





 int R92C_BCN_CTRL (int ) ;
 int R92C_BCN_CTRL_DIS_TSF_UDT0 ;
 int R92C_DUAL_TSF_RESET (int ) ;
 int R92C_DUAL_TSF_RST ;
 struct rtwn_vap* RTWN_VAP (struct ieee80211vap*) ;
 int device_printf (int ,char*,int) ;
 int ieee80211_runtask (struct ieee80211com*,int *) ;
 int rtwn_beacon_enable (struct rtwn_softc*,int ,int) ;
 int rtwn_setbits_1 (struct rtwn_softc*,int ,int ,int ) ;
 int rtwn_write_1 (struct rtwn_softc*,int ,int ) ;

__attribute__((used)) static void
rtwn_tsf_sync_enable(struct rtwn_softc *sc, struct ieee80211vap *vap)
{
 struct ieee80211com *ic = &sc->sc_ic;
 struct rtwn_vap *uvp = RTWN_VAP(vap);


 rtwn_write_1(sc, R92C_DUAL_TSF_RST, R92C_DUAL_TSF_RESET(uvp->id));

 switch (vap->iv_opmode) {
 case 128:

  rtwn_setbits_1(sc, R92C_BCN_CTRL(uvp->id),
      R92C_BCN_CTRL_DIS_TSF_UDT0, 0);
  break;
 case 129:
  ieee80211_runtask(ic, &uvp->tsf_sync_adhoc_task);

 case 130:

  rtwn_beacon_enable(sc, uvp->id, 1);
  break;
 default:
  device_printf(sc->sc_dev, "undefined opmode %d\n",
      vap->iv_opmode);
  return;
 }
}
