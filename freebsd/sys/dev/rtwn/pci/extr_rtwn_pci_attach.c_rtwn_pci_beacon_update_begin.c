
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_vap {int id; } ;
struct rtwn_softc {int dummy; } ;
struct ieee80211vap {int dummy; } ;


 int RTWN_ASSERT_LOCKED (struct rtwn_softc*) ;
 struct rtwn_vap* RTWN_VAP (struct ieee80211vap*) ;
 int rtwn_beacon_enable (struct rtwn_softc*,int ,int ) ;

__attribute__((used)) static void
rtwn_pci_beacon_update_begin(struct rtwn_softc *sc, struct ieee80211vap *vap)
{
 struct rtwn_vap *rvp = RTWN_VAP(vap);

 RTWN_ASSERT_LOCKED(sc);

 rtwn_beacon_enable(sc, rvp->id, 0);
}
