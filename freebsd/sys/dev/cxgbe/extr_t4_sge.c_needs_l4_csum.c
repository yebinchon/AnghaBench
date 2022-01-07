
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int csum_flags; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;


 int CSUM_TCP ;
 int CSUM_TCP_IPV6 ;
 int CSUM_TSO ;
 int CSUM_UDP ;
 int CSUM_UDP_IPV6 ;
 int M_ASSERTPKTHDR (struct mbuf*) ;

__attribute__((used)) static inline int
needs_l4_csum(struct mbuf *m)
{

 M_ASSERTPKTHDR(m);

 return (m->m_pkthdr.csum_flags & (CSUM_TCP | CSUM_UDP | CSUM_UDP_IPV6 |
     CSUM_TCP_IPV6 | CSUM_TSO));
}
