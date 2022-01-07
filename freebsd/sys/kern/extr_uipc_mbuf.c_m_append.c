
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int len; } ;
struct mbuf {int m_len; int m_flags; TYPE_1__ m_pkthdr; struct mbuf* m_next; int m_type; } ;
typedef int c_caddr_t ;


 int MLEN ;
 int M_NOWAIT ;
 int M_PKTHDR ;
 int M_TRAILINGSPACE (struct mbuf*) ;
 int bcopy (int,int,int) ;
 int caddr_t ;
 struct mbuf* m_get (int ,int ) ;
 int min (int ,int) ;
 int mtod (struct mbuf*,int ) ;

int
m_append(struct mbuf *m0, int len, c_caddr_t cp)
{
 struct mbuf *m, *n;
 int remainder, space;

 for (m = m0; m->m_next != ((void*)0); m = m->m_next)
  ;
 remainder = len;
 space = M_TRAILINGSPACE(m);
 if (space > 0) {



  if (space > remainder)
   space = remainder;
  bcopy(cp, mtod(m, caddr_t) + m->m_len, space);
  m->m_len += space;
  cp += space, remainder -= space;
 }
 while (remainder > 0) {




  n = m_get(M_NOWAIT, m->m_type);
  if (n == ((void*)0))
   break;
  n->m_len = min(MLEN, remainder);
  bcopy(cp, mtod(n, caddr_t), n->m_len);
  cp += n->m_len, remainder -= n->m_len;
  m->m_next = n;
  m = n;
 }
 if (m0->m_flags & M_PKTHDR)
  m0->m_pkthdr.len += len - remainder;
 return (remainder == 0);
}
