
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct ieee80211_node {int ni_flags; int ni_htcap; } ;


 int IEEE80211_HTCAP_SMPS ;



 int IEEE80211_NODE_MIMO_PS ;
 int IEEE80211_NODE_MIMO_RTS ;

__attribute__((used)) static __inline int
htcap_update_mimo_ps(struct ieee80211_node *ni)
{
 uint16_t oflags = ni->ni_flags;

 switch (ni->ni_htcap & IEEE80211_HTCAP_SMPS) {
 case 130:
  ni->ni_flags |= IEEE80211_NODE_MIMO_PS;
  ni->ni_flags |= IEEE80211_NODE_MIMO_RTS;
  break;
 case 129:
  ni->ni_flags |= IEEE80211_NODE_MIMO_PS;
  ni->ni_flags &= ~IEEE80211_NODE_MIMO_RTS;
  break;
 case 128:
 default:
  ni->ni_flags &= ~IEEE80211_NODE_MIMO_PS;
  ni->ni_flags &= ~IEEE80211_NODE_MIMO_RTS;
  break;
 }
 return (oflags ^ ni->ni_flags);
}
