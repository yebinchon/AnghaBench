
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uni_msg {void* b_rptr; } ;
struct TYPE_2__ {size_t len; } ;
struct mbuf {size_t m_len; TYPE_1__ m_pkthdr; int m_data; struct mbuf* m_next; } ;


 int KASSERT (int,char*) ;
 size_t MCLBYTES ;
 int MCLGET (struct mbuf*,int ) ;
 int MGET (struct mbuf*,int ,int ) ;
 int MGETHDR (struct mbuf*,int ,int ) ;
 size_t MHLEN ;
 size_t MLEN ;
 int MT_DATA ;
 int M_NOWAIT ;
 int bcopy (void*,int ,size_t) ;
 int m_freem (struct mbuf*) ;
 size_t uni_msg_len (struct uni_msg*) ;

struct mbuf *
uni_msg_pack_mbuf(struct uni_msg *msg, void *hdr, size_t hdrlen)
{
 struct mbuf *m, *m0, *last;
 size_t n;

 MGETHDR(m0, M_NOWAIT, MT_DATA);
 if (m0 == ((void*)0))
  return (((void*)0));

 KASSERT(hdrlen <= MHLEN, ("uni_msg_pack_mbuf: hdrlen > MHLEN"));

 if (hdrlen != 0) {
  bcopy(hdr, m0->m_data, hdrlen);
  m0->m_len = hdrlen;
  m0->m_pkthdr.len = hdrlen;

 } else {
  if ((n = uni_msg_len(msg)) > MHLEN) {
   if (!(MCLGET(m0, M_NOWAIT)))
    goto drop;
   if (n > MCLBYTES)
    n = MCLBYTES;
  }

  bcopy(msg->b_rptr, m0->m_data, n);
  msg->b_rptr += n;
  m0->m_len = n;
  m0->m_pkthdr.len = n;
 }

 last = m0;
 while (msg != ((void*)0) && (n = uni_msg_len(msg)) != 0) {
  MGET(m, M_NOWAIT, MT_DATA);
  if (m == ((void*)0))
   goto drop;
  last->m_next = m;
  last = m;

  if (n > MLEN) {
   if (!(MCLGET(m, M_NOWAIT)))
    goto drop;
   if (n > MCLBYTES)
    n = MCLBYTES;
  }

  bcopy(msg->b_rptr, m->m_data, n);
  msg->b_rptr += n;
  m->m_len = n;
  m0->m_pkthdr.len += n;
 }

 return (m0);

  drop:
 m_freem(m0);
 return (((void*)0));
}
