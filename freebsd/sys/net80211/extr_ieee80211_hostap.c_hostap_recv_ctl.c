
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mbuf {int dummy; } ;
struct ieee80211_node {TYPE_1__* ni_vap; } ;
struct TYPE_2__ {int (* iv_recv_pspoll ) (struct ieee80211_node*,struct mbuf*) ;} ;




 int ieee80211_recv_bar (struct ieee80211_node*,struct mbuf*) ;
 int stub1 (struct ieee80211_node*,struct mbuf*) ;

__attribute__((used)) static void
hostap_recv_ctl(struct ieee80211_node *ni, struct mbuf *m, int subtype)
{
 switch (subtype) {
 case 128:
  ni->ni_vap->iv_recv_pspoll(ni, m);
  break;
 case 129:
  ieee80211_recv_bar(ni, m);
  break;
 }
}
