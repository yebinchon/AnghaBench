
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct netfront_rxq {int dummy; } ;
struct TYPE_2__ {int len; } ;
struct mbuf {TYPE_1__ m_pkthdr; int m_len; } ;


 int MJUMPAGESIZE ;
 int MT_DATA ;
 int M_NOWAIT ;
 int M_PKTHDR ;
 struct mbuf* m_getjcl (int ,int ,int ,int ) ;

__attribute__((used)) static struct mbuf *
xn_alloc_one_rx_buffer(struct netfront_rxq *rxq)
{
 struct mbuf *m;

 m = m_getjcl(M_NOWAIT, MT_DATA, M_PKTHDR, MJUMPAGESIZE);
 if (m == ((void*)0))
  return ((void*)0);
 m->m_len = m->m_pkthdr.len = MJUMPAGESIZE;

 return (m);
}
