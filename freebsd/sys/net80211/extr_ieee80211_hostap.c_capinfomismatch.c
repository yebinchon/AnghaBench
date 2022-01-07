
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int is_rx_assoc_capmismatch; } ;
struct ieee80211vap {TYPE_1__ iv_stats; } ;
struct ieee80211_node {struct ieee80211vap* ni_vap; } ;
struct ieee80211_frame {int i_addr2; } ;


 int IEEE80211_MSG_ANY ;
 int IEEE80211_NOTE_MAC (struct ieee80211vap*,int ,int ,char*,char*,char const*,int) ;
 int IEEE80211_SEND_MGMT (struct ieee80211_node*,int,int ) ;
 int IEEE80211_STATUS_CAPINFO ;
 int ieee80211_node_leave (struct ieee80211_node*) ;

__attribute__((used)) static void
capinfomismatch(struct ieee80211_node *ni, const struct ieee80211_frame *wh,
 int reassoc, int resp, const char *tag, int capinfo)
{
 struct ieee80211vap *vap = ni->ni_vap;

 IEEE80211_NOTE_MAC(vap, IEEE80211_MSG_ANY, wh->i_addr2,
     "deny %s request, %s mismatch 0x%x",
     reassoc ? "reassoc" : "assoc", tag, capinfo);
 IEEE80211_SEND_MGMT(ni, resp, IEEE80211_STATUS_CAPINFO);
 ieee80211_node_leave(ni);
 vap->iv_stats.is_rx_assoc_capmismatch++;
}
