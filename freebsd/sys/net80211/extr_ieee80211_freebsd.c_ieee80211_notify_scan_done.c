
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int if_vnet; } ;
struct ieee80211vap {struct ifnet* iv_ifp; } ;


 int CURVNET_RESTORE () ;
 int CURVNET_SET (int ) ;
 int IEEE80211_DPRINTF (struct ieee80211vap*,int ,char*,char*) ;
 int IEEE80211_MSG_SCAN ;
 int RTM_IEEE80211_SCAN ;
 int rt_ieee80211msg (struct ifnet*,int ,int *,int ) ;

void
ieee80211_notify_scan_done(struct ieee80211vap *vap)
{
 struct ifnet *ifp = vap->iv_ifp;

 IEEE80211_DPRINTF(vap, IEEE80211_MSG_SCAN, "%s\n", "notify scan done");


 CURVNET_SET(ifp->if_vnet);
 rt_ieee80211msg(ifp, RTM_IEEE80211_SCAN, ((void*)0), 0);
 CURVNET_RESTORE();
}
