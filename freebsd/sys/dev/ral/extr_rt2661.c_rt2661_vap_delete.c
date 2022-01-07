
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt2661_vap {int dummy; } ;
struct ieee80211vap {int dummy; } ;


 int M_80211_VAP ;
 struct rt2661_vap* RT2661_VAP (struct ieee80211vap*) ;
 int free (struct rt2661_vap*,int ) ;
 int ieee80211_ratectl_deinit (struct ieee80211vap*) ;
 int ieee80211_vap_detach (struct ieee80211vap*) ;

__attribute__((used)) static void
rt2661_vap_delete(struct ieee80211vap *vap)
{
 struct rt2661_vap *rvp = RT2661_VAP(vap);

 ieee80211_ratectl_deinit(vap);
 ieee80211_vap_detach(vap);
 free(rvp, M_80211_VAP);
}
