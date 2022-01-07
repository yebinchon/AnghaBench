
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ifnet {int if_broadcastaddr; } ;
struct ieee80211vap {int iv_flags_ext; int iv_myaddr; int iv_bss; struct ifnet* iv_ifp; struct ieee80211com* iv_ic; } ;
struct ieee80211com {struct ieee80211_scan_state* ic_scan; } ;
struct ieee80211_scan_state {int ss_nssid; int ss_flags; TYPE_1__* ss_ssid; } ;
struct TYPE_2__ {char* ssid; int len; } ;


 int IEEE80211_FEXT_SCAN_OFFLOAD ;
 int IEEE80211_SCAN_NOBCAST ;
 int ieee80211_send_probereq (int ,int ,int ,int ,char*,int ) ;

__attribute__((used)) static void
ieee80211_swscan_probe_curchan(struct ieee80211vap *vap, int force)
{
 struct ieee80211com *ic = vap->iv_ic;
 struct ieee80211_scan_state *ss = ic->ic_scan;
 struct ifnet *ifp = vap->iv_ifp;
 int i;




 if (vap->iv_flags_ext & IEEE80211_FEXT_SCAN_OFFLOAD)
  return;






 for (i = 0; i < ss->ss_nssid; i++)
  ieee80211_send_probereq(vap->iv_bss,
   vap->iv_myaddr, ifp->if_broadcastaddr,
   ifp->if_broadcastaddr,
   ss->ss_ssid[i].ssid, ss->ss_ssid[i].len);
 if ((ss->ss_flags & IEEE80211_SCAN_NOBCAST) == 0)
  ieee80211_send_probereq(vap->iv_bss,
   vap->iv_myaddr, ifp->if_broadcastaddr,
   ifp->if_broadcastaddr,
   "", 0);
}
