
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void u_char ;
struct TYPE_2__ {size_t len; } ;
struct mbuf {size_t m_len; TYPE_1__ m_pkthdr; int m_data; struct mbuf* m_next; } ;


 int KASSERT (int,char*) ;
 size_t MCLBYTES ;
 int MGET (struct mbuf*,int ,int ) ;
 int MGETHDR (struct mbuf*,int ,int ) ;
 size_t MHLEN ;
 size_t MLEN ;
 int MT_DATA ;
 int M_NOWAIT ;
 int bcopy (void*,int ,size_t) ;
 int m_freem (struct mbuf*) ;
 struct mbuf* m_getcl (int ,int ,int ) ;

__attribute__((used)) static struct mbuf *
pack_buf(void *h, size_t hlen, void *t, size_t tlen)
{
 struct mbuf *m, *m0, *last;
 u_char *buf = (u_char *)t;
 size_t n;


 MGETHDR(m0, M_NOWAIT, MT_DATA);
 if (m0 == ((void*)0))
  return ((void*)0);

 KASSERT(hlen <= MHLEN, ("hlen > MHLEN"));

 bcopy(h, m0->m_data, hlen);
 m0->m_len = hlen;
 m0->m_pkthdr.len = hlen;

 last = m0;
 while ((n = tlen) != 0) {
  if (n > MLEN) {
   m = m_getcl(M_NOWAIT, MT_DATA, 0);
   if (n > MCLBYTES)
    n = MCLBYTES;
  } else
   MGET(m, M_NOWAIT, MT_DATA);

  if(m == ((void*)0))
   goto drop;

  last->m_next = m;
  last = m;

  bcopy(buf, m->m_data, n);
  buf += n;
  tlen -= n;
  m->m_len = n;
  m0->m_pkthdr.len += n;
 }

 return (m0);

  drop:
 m_freem(m0);
 return ((void*)0);
}
