
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pkthdr {int dummy; } ;
struct mbuf {int m_pkthdr; int m_flags; } ;


 int M_ASSERTPKTHDR (struct mbuf*) ;
 int M_PKTHDR ;
 int bzero (int *,int) ;
 int m_tag_delete_chain (struct mbuf*,int *) ;

void
m_demote_pkthdr(struct mbuf *m)
{

 M_ASSERTPKTHDR(m);

 m_tag_delete_chain(m, ((void*)0));
 m->m_flags &= ~M_PKTHDR;
 bzero(&m->m_pkthdr, sizeof(struct pkthdr));
}
