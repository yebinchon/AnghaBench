
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xnb_pkt {int dummy; } ;
struct mbuf {scalar_t__ m_len; } ;


 int MT_DATA ;
 int M_WAITOK ;
 int XNB_ASSERT (int) ;
 struct mbuf* m_get (int ,int ) ;
 int safe_m_freem (struct mbuf**) ;
 int xnb_mbufc2pkt (struct mbuf*,struct xnb_pkt*,int ,int) ;
 int xnb_pkt_is_valid (struct xnb_pkt*) ;

__attribute__((used)) static void
xnb_mbufc2pkt_empty(char *buffer, size_t buflen) {
 struct xnb_pkt pkt;
 int free_slots = 64;
 struct mbuf *mbuf;

 mbuf = m_get(M_WAITOK, MT_DATA);




 XNB_ASSERT(mbuf->m_len == 0);

 xnb_mbufc2pkt(mbuf, &pkt, 0, free_slots);
 XNB_ASSERT(! xnb_pkt_is_valid(&pkt));

 safe_m_freem(&mbuf);
}
