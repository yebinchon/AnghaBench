
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ rcvif; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct m_tag {int dummy; } ;
typedef unsigned short sa_family_t ;


 unsigned short AF_UNSPEC ;
 int M_NOWAIT ;
 int NETISR_ROUTE ;
 int PACKET_TAG_RTSOCKFAM ;
 scalar_t__ V_loif ;
 int m_freem (struct mbuf*) ;
 struct m_tag* m_tag_get (int ,int,int ) ;
 int m_tag_prepend (struct mbuf*,struct m_tag*) ;
 int netisr_queue (int ,struct mbuf*) ;

__attribute__((used)) static void
rt_dispatch(struct mbuf *m, sa_family_t saf)
{
 struct m_tag *tag;






 if (saf != AF_UNSPEC) {
  tag = m_tag_get(PACKET_TAG_RTSOCKFAM, sizeof(unsigned short),
      M_NOWAIT);
  if (tag == ((void*)0)) {
   m_freem(m);
   return;
  }
  *(unsigned short *)(tag + 1) = saf;
  m_tag_prepend(m, tag);
 }
 netisr_queue(NETISR_ROUTE, m);
}
