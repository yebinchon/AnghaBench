
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ieee80211_node {int ni_flags; } ;


 int IEEE80211_ELEMID_QOS ;
 int IEEE80211_NODE_QOS ;

uint8_t *
ieee80211_add_qos(uint8_t *frm, const struct ieee80211_node *ni)
{
 if (ni->ni_flags & IEEE80211_NODE_QOS) {
  *frm++ = IEEE80211_ELEMID_QOS;
  *frm++ = 1;
  *frm++ = 0;
 }

 return (frm);
}
