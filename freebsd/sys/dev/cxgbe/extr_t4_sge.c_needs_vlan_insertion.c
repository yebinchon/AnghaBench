
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int m_flags; } ;


 int M_ASSERTPKTHDR (struct mbuf*) ;
 int M_VLANTAG ;

__attribute__((used)) static inline int
needs_vlan_insertion(struct mbuf *m)
{

 M_ASSERTPKTHDR(m);

 return (m->m_flags & M_VLANTAG);
}
