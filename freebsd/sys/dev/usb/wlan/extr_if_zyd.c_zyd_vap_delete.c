
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zyd_vap {int dummy; } ;
struct ieee80211vap {int dummy; } ;


 int M_80211_VAP ;
 struct zyd_vap* ZYD_VAP (struct ieee80211vap*) ;
 int free (struct zyd_vap*,int ) ;
 int ieee80211_ratectl_deinit (struct ieee80211vap*) ;
 int ieee80211_vap_detach (struct ieee80211vap*) ;

__attribute__((used)) static void
zyd_vap_delete(struct ieee80211vap *vap)
{
 struct zyd_vap *zvp = ZYD_VAP(vap);

 ieee80211_ratectl_deinit(vap);
 ieee80211_vap_detach(vap);
 free(zvp, M_80211_VAP);
}
