
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct mwl_vap {int mv_hvap; int mv_eapolformat; } ;
struct ieee80211vap {scalar_t__ iv_state; struct ieee80211_node* iv_bss; } ;
struct ieee80211_txparam {scalar_t__ ucastrate; int mcastrate; int mgmtrate; } ;
struct ieee80211_node {struct ieee80211_txparam* ni_txparms; } ;
typedef int rates ;
struct TYPE_4__ {int MgtRate; int McastRate; } ;
typedef TYPE_1__ MWL_HAL_TXRATE ;


 scalar_t__ IEEE80211_FIXED_RATE_NONE ;
 scalar_t__ IEEE80211_S_RUN ;
 int KASSERT (int,char*) ;
 struct mwl_vap* MWL_VAP (struct ieee80211vap*) ;
 int RATE_AUTO ;
 int RATE_FIXED ;
 int htole16 (int ) ;
 int memset (TYPE_1__*,int ,int) ;
 int mwl_calcformat (int ,struct ieee80211_node*) ;
 int mwl_hal_settxrate (int ,int ,TYPE_1__*) ;

__attribute__((used)) static int
mwl_setrates(struct ieee80211vap *vap)
{
 struct mwl_vap *mvp = MWL_VAP(vap);
 struct ieee80211_node *ni = vap->iv_bss;
 const struct ieee80211_txparam *tp = ni->ni_txparms;
 MWL_HAL_TXRATE rates;

 KASSERT(vap->iv_state == IEEE80211_S_RUN, ("state %d", vap->iv_state));





 memset(&rates, 0, sizeof(rates));

 rates.MgtRate = tp->mgmtrate;

 rates.McastRate = tp->mcastrate;


 mvp->mv_eapolformat = htole16(mwl_calcformat(rates.MgtRate, ni));

 return mwl_hal_settxrate(mvp->mv_hvap,
     tp->ucastrate != IEEE80211_FIXED_RATE_NONE ?
  RATE_FIXED : RATE_AUTO, &rates);
}
