
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int csum_flags; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;


 int CSUM_IP6_TCP ;
 int CSUM_IP_TCP ;

__attribute__((used)) static unsigned int
sfxge_is_mbuf_non_tcp(struct mbuf *mbuf)
{



 return (!(mbuf->m_pkthdr.csum_flags & (CSUM_IP_TCP | CSUM_IP6_TCP)));
}
