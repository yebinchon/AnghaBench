
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_node {int ni_vap; } ;
struct ieee80211_frame {int i_addr2; } ;


 int IEEE80211_MSG_ANY ;
 int IEEE80211_NOTE_MAC (int ,int ,int ,char*,char*) ;
 int IEEE80211_SEND_MGMT (struct ieee80211_node*,int,int ) ;
 int IEEE80211_STATUS_MISSING_HT_CAPS ;
 int ieee80211_node_leave (struct ieee80211_node*) ;

__attribute__((used)) static void
htcapmismatch(struct ieee80211_node *ni, const struct ieee80211_frame *wh,
 int reassoc, int resp)
{
 IEEE80211_NOTE_MAC(ni->ni_vap, IEEE80211_MSG_ANY, wh->i_addr2,
     "deny %s request, %s missing HT ie", reassoc ? "reassoc" : "assoc");

 IEEE80211_SEND_MGMT(ni, resp, IEEE80211_STATUS_MISSING_HT_CAPS);
 ieee80211_node_leave(ni);
}
