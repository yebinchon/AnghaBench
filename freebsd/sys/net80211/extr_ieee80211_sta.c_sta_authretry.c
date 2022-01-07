
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211vap {int iv_roaming; TYPE_1__* iv_bss; } ;
struct ieee80211_node {int dummy; } ;
struct TYPE_2__ {int ni_macaddr; } ;


 int IEEE80211_FC0_SUBTYPE_AUTH ;





 int IEEE80211_ROAMING_AUTO ;
 int IEEE80211_SEND_MGMT (struct ieee80211_node*,int ,int) ;


 int ieee80211_check_scan_current (struct ieee80211vap*) ;
 int ieee80211_scan_assoc_fail (struct ieee80211vap*,int ,int) ;

__attribute__((used)) static void
sta_authretry(struct ieee80211vap *vap, struct ieee80211_node *ni, int reason)
{
 switch (reason) {
 case 129:
 case 128:
 case 134:
 case 130:
 case 131:
 case 133:
 case 132:
  IEEE80211_SEND_MGMT(ni, IEEE80211_FC0_SUBTYPE_AUTH, 1);
  break;
 default:
  ieee80211_scan_assoc_fail(vap, vap->iv_bss->ni_macaddr, reason);
  if (vap->iv_roaming == IEEE80211_ROAMING_AUTO)
   ieee80211_check_scan_current(vap);
  break;
 }
}
