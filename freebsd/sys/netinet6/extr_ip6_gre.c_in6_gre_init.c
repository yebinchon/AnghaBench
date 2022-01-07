
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IS_DEFAULT_VNET (int ) ;
 int M_WAITOK ;
 int curvnet ;
 int ecookie ;
 int in6_gre_srcaddr ;
 int ip6_encap_attach (int *,int *,int ) ;
 int ip6_encap_register_srcaddr (int ,int *,int ) ;
 int ipv6_encap_cfg ;
 int ipv6_srcaddrtab ;

void
in6_gre_init(void)
{

 if (!IS_DEFAULT_VNET(curvnet))
  return;
 ipv6_srcaddrtab = ip6_encap_register_srcaddr(in6_gre_srcaddr,
     ((void*)0), M_WAITOK);
 ecookie = ip6_encap_attach(&ipv6_encap_cfg, ((void*)0), M_WAITOK);
}
