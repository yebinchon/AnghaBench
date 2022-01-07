
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int len; } ;
struct mbuf {TYPE_1__ m_pkthdr; int m_len; } ;


 int ETHER_ALIGN ;
 int MCLBYTES ;
 int MT_DATA ;
 int M_NOWAIT ;
 int M_PKTHDR ;
 int m_adj (struct mbuf*,int ) ;
 struct mbuf* m_getcl (int ,int ,int ) ;

struct mbuf *
uether_newbuf(void)
{
 struct mbuf *m_new;

 m_new = m_getcl(M_NOWAIT, MT_DATA, M_PKTHDR);
 if (m_new == ((void*)0))
  return (((void*)0));
 m_new->m_len = m_new->m_pkthdr.len = MCLBYTES;

 m_adj(m_new, ETHER_ALIGN);
 return (m_new);
}
