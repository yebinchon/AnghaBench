
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211vap {TYPE_1__* iv_ifp; } ;
struct TYPE_2__ {int if_vnet; } ;


 int CURVNET_RESTORE () ;
 int CURVNET_SET (int ) ;
 int if_clone_destroyif (int ,TYPE_1__*) ;
 int wlan_cloner ;

void
ieee80211_vap_destroy(struct ieee80211vap *vap)
{
 CURVNET_SET(vap->iv_ifp->if_vnet);
 if_clone_destroyif(wlan_cloner, vap->iv_ifp);
 CURVNET_RESTORE();
}
