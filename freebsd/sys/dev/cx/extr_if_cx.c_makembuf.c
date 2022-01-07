
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct TYPE_2__ {scalar_t__ len; } ;
struct mbuf {scalar_t__ m_len; struct mbuf* m_next; TYPE_1__ m_pkthdr; } ;


 int MCLGET (struct mbuf*,int ) ;
 int MGET (struct mbuf*,int ,int ) ;
 int MGETHDR (struct mbuf*,int ,int ) ;
 scalar_t__ MINCLSIZE ;
 int MT_DATA ;
 int M_NOWAIT ;
 scalar_t__ M_TRAILINGSPACE (struct mbuf*) ;
 int bcopy (void*,scalar_t__,scalar_t__) ;
 int caddr_t ;
 int m_freem (struct mbuf*) ;
 scalar_t__ mtod (struct mbuf*,int ) ;

__attribute__((used)) static struct mbuf *makembuf (void *buf, u_int len)
{
 struct mbuf *m, *o, *p;

 MGETHDR (m, M_NOWAIT, MT_DATA);

 if (! m)
  return 0;

 if (len >= MINCLSIZE)
  MCLGET (m, M_NOWAIT);

 m->m_pkthdr.len = len;
 m->m_len = 0;

 p = m;
 while (len) {
  u_int n = M_TRAILINGSPACE (p);
  if (n > len)
   n = len;
  if (! n) {

   o = p;
   MGET (p, M_NOWAIT, MT_DATA);
   if (! p) {
    m_freem (m);
    return 0;
   }
   if (len >= MINCLSIZE)
    MCLGET (p, M_NOWAIT);
   p->m_len = 0;
   o->m_next = p;

   n = M_TRAILINGSPACE (p);
   if (n > len)
    n = len;
  }
  bcopy (buf, mtod (p, caddr_t) + p->m_len, n);

  p->m_len += n;
  buf = n + (char*) buf;
  len -= n;
 }
 return m;
}
