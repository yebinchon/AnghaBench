
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int8_t ;
typedef int u_int16_t ;
struct pf_addr {int * addr16; } ;
struct TYPE_2__ {int csum_flags; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
typedef int sa_family_t ;




 int CSUM_DELAY_DATA ;
 int CSUM_DELAY_DATA_IPV6 ;
 int PF_ACPY (struct pf_addr*,struct pf_addr*,int ) ;
 int pf_cksum_fixup (int,int ,int ,int ) ;
 int pf_proto_cksum_fixup (struct mbuf*,int,int,int,int ) ;

__attribute__((used)) static void
pf_change_ap(struct mbuf *m, struct pf_addr *a, u_int16_t *p, u_int16_t *ic,
        u_int16_t *pc, struct pf_addr *an, u_int16_t pn, u_int8_t u,
        sa_family_t af)
{
 struct pf_addr ao;
 u_int16_t po = *p;

 PF_ACPY(&ao, a, af);
 PF_ACPY(a, an, af);

 if (m->m_pkthdr.csum_flags & (CSUM_DELAY_DATA | CSUM_DELAY_DATA_IPV6))
  *pc = ~*pc;

 *p = pn;

 switch (af) {
 }

 if (m->m_pkthdr.csum_flags & (CSUM_DELAY_DATA |
     CSUM_DELAY_DATA_IPV6)) {
  *pc = ~*pc;
  if (! *pc)
   *pc = 0xffff;
 }
}
