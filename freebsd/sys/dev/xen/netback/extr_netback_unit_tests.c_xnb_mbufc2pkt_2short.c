
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xnb_pkt {size_t size; scalar_t__ car; size_t car_size; int list_len; scalar_t__ cdr; } ;
struct TYPE_2__ {size_t len; } ;
struct mbuf {size_t m_len; int * m_next; TYPE_1__ m_pkthdr; int m_flags; } ;
typedef scalar_t__ RING_IDX ;


 int MHLEN ;
 int MT_DATA ;
 int M_PKTHDR ;
 int M_WAITOK ;
 int XNB_ASSERT (int) ;
 struct mbuf* m_getm (struct mbuf*,size_t,int ,int ) ;
 int safe_m_freem (struct mbuf**) ;
 int xnb_mbufc2pkt (struct mbuf*,struct xnb_pkt*,scalar_t__,int) ;
 int xnb_pkt_is_valid (struct xnb_pkt*) ;

__attribute__((used)) static void
xnb_mbufc2pkt_2short(char *buffer, size_t buflen) {
 struct xnb_pkt pkt;
 size_t size1 = MHLEN - 5;
 size_t size2 = MHLEN - 15;
 int free_slots = 32;
 RING_IDX start = 14;
 struct mbuf *mbufc, *mbufc2;

 mbufc = m_getm(((void*)0), size1, M_WAITOK, MT_DATA);
 XNB_ASSERT(mbufc != ((void*)0));
 if (mbufc == ((void*)0))
  return;
 mbufc->m_flags |= M_PKTHDR;

 mbufc2 = m_getm(mbufc, size2, M_WAITOK, MT_DATA);
 XNB_ASSERT(mbufc2 != ((void*)0));
 if (mbufc2 == ((void*)0)) {
  safe_m_freem(&mbufc);
  return;
 }
 mbufc2->m_pkthdr.len = size1 + size2;
 mbufc2->m_len = size1;

 xnb_mbufc2pkt(mbufc2, &pkt, start, free_slots);
 XNB_ASSERT(xnb_pkt_is_valid(&pkt));
 XNB_ASSERT(pkt.size == size1 + size2);
 XNB_ASSERT(pkt.car == start);




 if (mbufc2->m_next != ((void*)0)) {
  XNB_ASSERT(pkt.car_size == size1);
  XNB_ASSERT(pkt.list_len == 1);
  XNB_ASSERT(pkt.cdr == start + 1);
 }

 safe_m_freem(&mbufc2);
}
