
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef scalar_t__ u_short ;
struct TYPE_2__ {int csum_flags; scalar_t__ csum_data; } ;
struct mbuf {scalar_t__ m_len; TYPE_1__ m_pkthdr; } ;
typedef int csum ;
typedef int caddr_t ;


 int CSUM_UDP_IPV6 ;
 scalar_t__ in_cksum_skip (struct mbuf*,scalar_t__,scalar_t__) ;
 int m_copyback (struct mbuf*,scalar_t__,int,int ) ;
 scalar_t__ mtodo (struct mbuf*,scalar_t__) ;

void
in6_delayed_cksum(struct mbuf *m, uint32_t plen, u_short offset)
{
 u_short csum;

 csum = in_cksum_skip(m, offset + plen, offset);
 if (m->m_pkthdr.csum_flags & CSUM_UDP_IPV6 && csum == 0)
  csum = 0xffff;
 offset += m->m_pkthdr.csum_data;

 if (offset + sizeof(csum) > m->m_len)
  m_copyback(m, offset, sizeof(csum), (caddr_t)&csum);
 else
  *(u_short *)mtodo(m, offset) = csum;
}
