
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int8_t ;
typedef int u_int16_t ;
struct TYPE_2__ {int csum_flags; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;


 int CSUM_DELAY_DATA ;
 int CSUM_DELAY_DATA_IPV6 ;
 int pf_cksum_fixup (int ,int ,int ,int ) ;

u_int16_t
pf_proto_cksum_fixup(struct mbuf *m, u_int16_t cksum, u_int16_t old,
        u_int16_t new, u_int8_t udp)
{
 if (m->m_pkthdr.csum_flags & (CSUM_DELAY_DATA | CSUM_DELAY_DATA_IPV6))
  return (cksum);

 return (pf_cksum_fixup(cksum, old, new, udp));
}
