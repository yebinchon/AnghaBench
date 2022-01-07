
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211vap {int iv_oid; int iv_sysctl; TYPE_1__* iv_rate; } ;
struct TYPE_2__ {int (* ir_init ) (struct ieee80211vap*) ;} ;


 int CTLFLAG_MPSAFE ;
 int CTLFLAG_RD ;
 int CTLTYPE_STRING ;
 int IEEE80211_RATECTL_AMRR ;
 size_t IEEE80211_RATECTL_NONE ;
 int OID_AUTO ;
 int SYSCTL_ADD_PROC (int ,int ,int ,char*,int,struct ieee80211vap*,int ,int ,char*,char*) ;
 int SYSCTL_CHILDREN (int ) ;
 int ieee80211_ratectl_set (struct ieee80211vap*,int ) ;
 int ieee80211_ratectl_sysctl_stats ;
 TYPE_1__** ratectls ;
 int stub1 (struct ieee80211vap*) ;

void
ieee80211_ratectl_init(struct ieee80211vap *vap)
{
 if (vap->iv_rate == ratectls[IEEE80211_RATECTL_NONE])
  ieee80211_ratectl_set(vap, IEEE80211_RATECTL_AMRR);
 vap->iv_rate->ir_init(vap);


 SYSCTL_ADD_PROC(vap->iv_sysctl, SYSCTL_CHILDREN(vap->iv_oid), OID_AUTO,
     "rate_stats", CTLTYPE_STRING | CTLFLAG_RD | CTLFLAG_MPSAFE, vap,
     0, ieee80211_ratectl_sysctl_stats, "A", "ratectl node stats");
}
