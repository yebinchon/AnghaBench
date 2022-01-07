
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint8_t ;
struct run_softc {int dummy; } ;
struct run_node {size_t fix_ridx; } ;
struct ifnet {int if_flags; int if_drv_flags; struct ieee80211vap* if_softc; } ;
struct ieee80211vap {int iv_bss; struct ieee80211_txparam* iv_txparms; struct ieee80211com* iv_ic; } ;
struct ieee80211com {size_t ic_curmode; TYPE_1__* ic_sup_rates; int ic_curchan; struct run_softc* ic_softc; } ;
struct ieee80211_txparam {size_t ucastrate; } ;
struct ieee80211_node {int dummy; } ;
struct TYPE_4__ {size_t rate; } ;
struct TYPE_3__ {size_t* rs_rates; } ;


 int ENETRESET ;
 size_t IEEE80211_FIXED_RATE_NONE ;
 size_t IEEE80211_RATE_VAL ;
 int IFF_UP ;
 size_t RT2860_RIDX_MAX ;
 int RUN_DEBUG_RATE ;
 int RUN_DPRINTF (struct run_softc*,int ,char*,size_t,size_t) ;
 int RUN_LOCK (struct run_softc*) ;
 struct run_node* RUN_NODE (struct ieee80211_node*) ;
 int RUN_RUNNING ;
 int RUN_UNLOCK (struct run_softc*) ;
 size_t ieee80211_chan2mode (int ) ;
 int ieee80211_free_node (struct ieee80211_node*) ;
 int ieee80211_media_change (struct ifnet*) ;
 struct ieee80211_node* ieee80211_ref_node (int ) ;
 TYPE_2__* rt2860_rates ;
 int run_init_locked (struct run_softc*) ;

__attribute__((used)) static int
run_media_change(struct ifnet *ifp)
{
 struct ieee80211vap *vap = ifp->if_softc;
 struct ieee80211com *ic = vap->iv_ic;
 const struct ieee80211_txparam *tp;
 struct run_softc *sc = ic->ic_softc;
 uint8_t rate, ridx;
 int error;

 RUN_LOCK(sc);

 error = ieee80211_media_change(ifp);
 if (error != ENETRESET) {
  RUN_UNLOCK(sc);
  return (error);
 }

 tp = &vap->iv_txparms[ieee80211_chan2mode(ic->ic_curchan)];
 if (tp->ucastrate != IEEE80211_FIXED_RATE_NONE) {
  struct ieee80211_node *ni;
  struct run_node *rn;

  rate = ic->ic_sup_rates[ic->ic_curmode].
      rs_rates[tp->ucastrate] & IEEE80211_RATE_VAL;
  for (ridx = 0; ridx < RT2860_RIDX_MAX; ridx++)
   if (rt2860_rates[ridx].rate == rate)
    break;
  ni = ieee80211_ref_node(vap->iv_bss);
  rn = RUN_NODE(ni);
  rn->fix_ridx = ridx;
  RUN_DPRINTF(sc, RUN_DEBUG_RATE, "rate=%d, fix_ridx=%d\n",
      rate, rn->fix_ridx);
  ieee80211_free_node(ni);
 }
 RUN_UNLOCK(sc);

 return (0);
}
