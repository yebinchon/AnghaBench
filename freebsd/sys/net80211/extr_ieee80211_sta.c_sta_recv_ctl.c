
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct ieee80211_node {int dummy; } ;



 int ieee80211_recv_bar (struct ieee80211_node*,struct mbuf*) ;

__attribute__((used)) static void
sta_recv_ctl(struct ieee80211_node *ni, struct mbuf *m, int subtype)
{
 switch (subtype) {
 case 128:
  ieee80211_recv_bar(ni, m);
  break;
 }
}
