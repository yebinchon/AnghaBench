
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xnb_pkt {int dummy; } ;
struct TYPE_2__ {size_t len; } ;
struct mbuf {scalar_t__ m_len; struct mbuf* m_next; TYPE_1__ m_pkthdr; int m_flags; } ;
typedef int RING_IDX ;


 int EAGAIN ;
 scalar_t__ MAX (int ,size_t) ;
 int MCLBYTES ;
 int MT_DATA ;
 int M_PKTHDR ;
 int M_TRAILINGSPACE (struct mbuf*) ;
 int M_WAITOK ;
 int XNB_ASSERT (int) ;
 struct mbuf* m_getm (int *,size_t,int ,int ) ;
 int safe_m_freem (struct mbuf**) ;
 int xnb_mbufc2pkt (struct mbuf*,struct xnb_pkt*,int,int) ;
 int xnb_pkt_is_valid (struct xnb_pkt*) ;

__attribute__((used)) static void
xnb_mbufc2pkt_nospace(char *buffer, size_t buflen) {
 struct xnb_pkt pkt;
 size_t size = 14 * MCLBYTES / 3;
 size_t size_remaining;
 int free_slots = 2;
 RING_IDX start = 3;
 struct mbuf *mbufc, *m;
 int error;

 mbufc = m_getm(((void*)0), size, M_WAITOK, MT_DATA);
 XNB_ASSERT(mbufc != ((void*)0));
 if (mbufc == ((void*)0))
  return;
 mbufc->m_flags |= M_PKTHDR;

 mbufc->m_pkthdr.len = size;
 size_remaining = size;
 for (m = mbufc; m != ((void*)0); m = m->m_next) {
  m->m_len = MAX(M_TRAILINGSPACE(m), size_remaining);
  size_remaining -= m->m_len;
 }

 error = xnb_mbufc2pkt(mbufc, &pkt, start, free_slots);
 XNB_ASSERT(error == EAGAIN);
 XNB_ASSERT(! xnb_pkt_is_valid(&pkt));

 safe_m_freem(&mbufc);
}
