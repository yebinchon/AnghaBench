
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xnb_pkt {size_t size; size_t car_size; int flags; int list_len; scalar_t__ car; } ;
struct TYPE_2__ {size_t len; } ;
struct mbuf {size_t m_len; TYPE_1__ m_pkthdr; int m_flags; } ;
typedef scalar_t__ RING_IDX ;


 size_t MCLBYTES ;
 int MT_DATA ;
 int M_PKTHDR ;
 int M_WAITOK ;
 int NETRXF_extra_info ;
 int NETRXF_more_data ;
 int XNB_ASSERT (int) ;
 struct mbuf* m_getm (int *,size_t,int ,int ) ;
 int safe_m_freem (struct mbuf**) ;
 int xnb_mbufc2pkt (struct mbuf*,struct xnb_pkt*,scalar_t__,int) ;
 int xnb_pkt_is_valid (struct xnb_pkt*) ;

__attribute__((used)) static void
xnb_mbufc2pkt_1cluster(char *buffer, size_t buflen) {
 struct xnb_pkt pkt;
 size_t size = MCLBYTES;
 int free_slots = 32;
 RING_IDX start = 12;
 struct mbuf *mbuf;

 mbuf = m_getm(((void*)0), size, M_WAITOK, MT_DATA);
 mbuf->m_flags |= M_PKTHDR;
 mbuf->m_pkthdr.len = size;
 mbuf->m_len = size;

 xnb_mbufc2pkt(mbuf, &pkt, start, free_slots);
 XNB_ASSERT(xnb_pkt_is_valid(&pkt));
 XNB_ASSERT(pkt.size == size);
 XNB_ASSERT(pkt.car_size == size);
 XNB_ASSERT(! (pkt.flags &
       (NETRXF_more_data | NETRXF_extra_info)));
 XNB_ASSERT(pkt.list_len == 1);
 XNB_ASSERT(pkt.car == start);

 safe_m_freem(&mbuf);
}
