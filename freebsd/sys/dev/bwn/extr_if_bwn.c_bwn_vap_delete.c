
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211vap {int dummy; } ;
struct bwn_vap {int dummy; } ;


 struct bwn_vap* BWN_VAP (struct ieee80211vap*) ;
 int M_80211_VAP ;
 int free (struct bwn_vap*,int ) ;
 int ieee80211_ratectl_deinit (struct ieee80211vap*) ;
 int ieee80211_vap_detach (struct ieee80211vap*) ;

__attribute__((used)) static void
bwn_vap_delete(struct ieee80211vap *vap)
{
 struct bwn_vap *bvp = BWN_VAP(vap);

 ieee80211_ratectl_deinit(vap);
 ieee80211_vap_detach(vap);
 free(bvp, M_80211_VAP);
}
