
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ len; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;


 int M_ASSERTPKTHDR (struct mbuf*) ;
 int m_cat (struct mbuf*,struct mbuf*) ;
 int m_demote (struct mbuf*,int,int ) ;

void
m_catpkt(struct mbuf *m, struct mbuf *n)
{

 M_ASSERTPKTHDR(m);
 M_ASSERTPKTHDR(n);

 m->m_pkthdr.len += n->m_pkthdr.len;
 m_demote(n, 1, 0);

 m_cat(m, n);
}
