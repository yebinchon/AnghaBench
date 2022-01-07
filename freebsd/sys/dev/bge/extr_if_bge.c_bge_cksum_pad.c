
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int len; } ;
struct mbuf {scalar_t__ m_len; TYPE_1__ m_pkthdr; struct mbuf* m_next; } ;


 int ENOBUFS ;
 int ETHER_MIN_NOPAD ;
 int MGET (struct mbuf*,int ,int ) ;
 int MT_DATA ;
 int M_NOWAIT ;
 int M_TRAILINGSPACE (struct mbuf*) ;
 scalar_t__ M_WRITABLE (struct mbuf*) ;
 int caddr_t ;
 int memset (scalar_t__,int ,int) ;
 scalar_t__ mtod (struct mbuf*,int ) ;

__attribute__((used)) static __inline int
bge_cksum_pad(struct mbuf *m)
{
 int padlen = ETHER_MIN_NOPAD - m->m_pkthdr.len;
 struct mbuf *last;


 if (m->m_pkthdr.len == m->m_len && M_WRITABLE(m) &&
     M_TRAILINGSPACE(m) >= padlen) {
  last = m;
 } else {




  for (last = m; last->m_next != ((void*)0); last = last->m_next);
  if (!(M_WRITABLE(last) && M_TRAILINGSPACE(last) >= padlen)) {

   struct mbuf *n;

   MGET(n, M_NOWAIT, MT_DATA);
   if (n == ((void*)0))
    return (ENOBUFS);
   n->m_len = 0;
   last->m_next = n;
   last = n;
  }
 }


 memset(mtod(last, caddr_t) + last->m_len, 0, padlen);
 last->m_len += padlen;
 m->m_pkthdr.len += padlen;

 return (0);
}
