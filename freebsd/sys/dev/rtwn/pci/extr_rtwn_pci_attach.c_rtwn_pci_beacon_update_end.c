
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_vap {scalar_t__ curr_mode; int id; } ;
struct rtwn_softc {int dummy; } ;
struct ieee80211vap {int dummy; } ;


 scalar_t__ R92C_MSR_NOLINK ;
 int RTWN_ASSERT_LOCKED (struct rtwn_softc*) ;
 struct rtwn_vap* RTWN_VAP (struct ieee80211vap*) ;
 int rtwn_beacon_enable (struct rtwn_softc*,int ,int) ;

__attribute__((used)) static void
rtwn_pci_beacon_update_end(struct rtwn_softc *sc, struct ieee80211vap *vap)
{
 struct rtwn_vap *rvp = RTWN_VAP(vap);

 RTWN_ASSERT_LOCKED(sc);

 if (rvp->curr_mode != R92C_MSR_NOLINK)
  rtwn_beacon_enable(sc, rvp->id, 1);
}
