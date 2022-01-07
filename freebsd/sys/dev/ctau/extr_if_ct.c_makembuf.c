
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_2__ {int len; } ;
struct mbuf {int m_len; TYPE_1__ m_pkthdr; } ;


 int MCLGET (struct mbuf*,int ) ;
 int MGETHDR (struct mbuf*,int ,int ) ;
 int MT_DATA ;
 int M_NOWAIT ;
 int bcopy (void*,int ,int ) ;
 int caddr_t ;
 int m_freem (struct mbuf*) ;
 int mtod (struct mbuf*,int ) ;

__attribute__((used)) static struct mbuf *makembuf (void *buf, u_int len)
{
 struct mbuf *m;

 MGETHDR (m, M_NOWAIT, MT_DATA);
 if (! m)
  return 0;
 if (!(MCLGET(m, M_NOWAIT))) {
  m_freem (m);
  return 0;
 }
 m->m_pkthdr.len = m->m_len = len;
 bcopy (buf, mtod (m, caddr_t), len);
 return m;
}
