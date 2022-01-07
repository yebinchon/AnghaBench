
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {scalar_t__ m_len; scalar_t__ m_data; struct mbuf* m_next; } ;


 scalar_t__ ETHER_HDR_LEN ;
 scalar_t__ MCLBYTES ;
 int MGETHDR (struct mbuf*,int ,int ) ;
 int MT_DATA ;
 int M_MOVE_PKTHDR (struct mbuf*,struct mbuf*) ;
 int M_NOWAIT ;
 int bcopy (scalar_t__,scalar_t__,scalar_t__) ;
 int m_freem (struct mbuf*) ;

__attribute__((used)) static struct mbuf *
iflib_fixup_rx(struct mbuf *m)
{
 struct mbuf *n;

 if (m->m_len <= (MCLBYTES - ETHER_HDR_LEN)) {
  bcopy(m->m_data, m->m_data + ETHER_HDR_LEN, m->m_len);
  m->m_data += ETHER_HDR_LEN;
  n = m;
 } else {
  MGETHDR(n, M_NOWAIT, MT_DATA);
  if (n == ((void*)0)) {
   m_freem(m);
   return (((void*)0));
  }
  bcopy(m->m_data, n->m_data, ETHER_HDR_LEN);
  m->m_data += ETHER_HDR_LEN;
  m->m_len -= ETHER_HDR_LEN;
  n->m_len = ETHER_HDR_LEN;
  M_MOVE_PKTHDR(n, m);
  n->m_next = m;
 }
 return (n);
}
