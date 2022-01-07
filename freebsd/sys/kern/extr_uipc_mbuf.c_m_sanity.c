
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int len; int tags; } ;
struct mbuf {scalar_t__ m_len; int m_flags; TYPE_1__ m_pkthdr; struct mbuf* m_nextpkt; scalar_t__ m_data; struct mbuf* m_next; } ;
typedef scalar_t__ caddr_t ;


 int M_PKTHDR ;
 int M_SANITY_ACTION (char*) ;
 scalar_t__ M_SIZE (struct mbuf*) ;
 scalar_t__ M_START (struct mbuf*) ;
 int SLIST_EMPTY (int *) ;
 int bzero (TYPE_1__*,int) ;
 int m_freem (struct mbuf*) ;
 int m_tag_delete_chain (struct mbuf*,int *) ;

int
m_sanity(struct mbuf *m0, int sanitize)
{
 struct mbuf *m;
 caddr_t a, b;
 int pktlen = 0;







 for (m = m0; m != ((void*)0); m = m->m_next) {





  a = M_START(m);
  b = a + M_SIZE(m);
  if ((caddr_t)m->m_data < a)
   printf("mbuf %p: " "m_data outside mbuf data range left", m);
  if ((caddr_t)m->m_data > b)
   printf("mbuf %p: " "m_data outside mbuf data range right", m);
  if ((caddr_t)m->m_data + m->m_len > b)
   printf("mbuf %p: " "m_data + m_len exeeds mbuf space", m);


  if (m != m0 && m->m_nextpkt != ((void*)0)) {
   if (sanitize) {
    m_freem(m->m_nextpkt);
    m->m_nextpkt = (struct mbuf *)0xDEADC0DE;
   } else
    printf("mbuf %p: " "m->m_nextpkt on in-chain mbuf", m);
  }


  if (m0->m_flags & M_PKTHDR)
   pktlen += m->m_len;


  if (m != m0 && m->m_flags & M_PKTHDR &&
      !SLIST_EMPTY(&m->m_pkthdr.tags)) {
   if (sanitize) {
    m_tag_delete_chain(m, ((void*)0));

   } else
    printf("mbuf %p: " "m_tags on in-chain mbuf", m);
  }


  if (m != m0 && m->m_flags & M_PKTHDR) {
   if (sanitize) {
    bzero(&m->m_pkthdr, sizeof(m->m_pkthdr));
    m->m_flags &= ~M_PKTHDR;

   } else
    printf("mbuf %p: " "M_PKTHDR on in-chain mbuf", m);
  }
 }
 m = m0;
 if (pktlen && pktlen != m->m_pkthdr.len) {
  if (sanitize)
   m->m_pkthdr.len = 0;
  else
   printf("mbuf %p: " "m_pkthdr.len != mbuf chain length", m);
 }
 return 1;


}
