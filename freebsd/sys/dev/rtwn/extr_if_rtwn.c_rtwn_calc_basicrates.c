
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ieee80211vap {int * iv_bss; } ;
struct rtwn_vap {scalar_t__ curr_mode; struct ieee80211vap vap; } ;
struct ieee80211com {int ic_flags; } ;
struct rtwn_softc {struct rtwn_vap** vaps; struct ieee80211com sc_ic; } ;
struct ieee80211_node {int ni_rates; } ;


 int IEEE80211_F_SCAN ;
 scalar_t__ R92C_MSR_NOLINK ;
 int RTWN_ASSERT_LOCKED (struct rtwn_softc*) ;
 int ieee80211_free_node (struct ieee80211_node*) ;
 struct ieee80211_node* ieee80211_ref_node (int *) ;
 int nitems (struct rtwn_vap**) ;
 int rtwn_get_rates (struct rtwn_softc*,int *,int *,int *,int *,int) ;
 int rtwn_set_basicrates (struct rtwn_softc*,int ) ;

__attribute__((used)) static void
rtwn_calc_basicrates(struct rtwn_softc *sc)
{
 struct ieee80211com *ic = &sc->sc_ic;
 uint32_t basicrates;
 int i;

 RTWN_ASSERT_LOCKED(sc);

 if (ic->ic_flags & IEEE80211_F_SCAN)
  return;

 basicrates = 0;
 for (i = 0; i < nitems(sc->vaps); i++) {
  struct rtwn_vap *rvp;
  struct ieee80211vap *vap;
  struct ieee80211_node *ni;
  uint32_t rates;

  rvp = sc->vaps[i];
  if (rvp == ((void*)0) || rvp->curr_mode == R92C_MSR_NOLINK)
   continue;

  vap = &rvp->vap;
  if (vap->iv_bss == ((void*)0))
   continue;

  ni = ieee80211_ref_node(vap->iv_bss);
  rtwn_get_rates(sc, &ni->ni_rates, ((void*)0), &rates, ((void*)0), 1);
  basicrates |= rates;
  ieee80211_free_node(ni);
 }

 if (basicrates == 0)
  return;


 rtwn_set_basicrates(sc, basicrates);
}
