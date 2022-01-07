
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ len; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct ieee80211_rx_ampdu {int rxa_qframes; int rxa_qbytes; struct mbuf** rxa_m; } ;


 int m_freem (struct mbuf*) ;

__attribute__((used)) static void
ampdu_rx_purge_slot(struct ieee80211_rx_ampdu *rap, int i)
{
 struct mbuf *m;

 m = rap->rxa_m[i];
 if (m == ((void*)0))
  return;

 rap->rxa_m[i] = ((void*)0);
 rap->rxa_qbytes -= m->m_pkthdr.len;
 rap->rxa_qframes--;
 m_freem(m);
}
