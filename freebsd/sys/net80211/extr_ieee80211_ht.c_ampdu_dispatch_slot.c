
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ len; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct ieee80211_rx_ampdu {int rxa_qframes; int rxa_qbytes; struct mbuf** rxa_m; } ;
struct ieee80211_node {int dummy; } ;


 int ampdu_dispatch (struct ieee80211_node*,struct mbuf*) ;

__attribute__((used)) static int
ampdu_dispatch_slot(struct ieee80211_rx_ampdu *rap, struct ieee80211_node *ni,
    int i)
{
 struct mbuf *m;

 if (rap->rxa_m[i] == ((void*)0))
  return (0);

 m = rap->rxa_m[i];
 rap->rxa_m[i] = ((void*)0);
 rap->rxa_qbytes -= m->m_pkthdr.len;
 rap->rxa_qframes--;

 ampdu_dispatch(ni, m);

 return (1);
}
