
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IS_DEFAULT_VNET (int ) ;
 int M_WAITOK ;
 int curvnet ;
 int ecookie ;
 int in_gre_srcaddr ;
 int ip_encap_attach (int *,int *,int ) ;
 int ip_encap_register_srcaddr (int ,int *,int ) ;
 int ipv4_encap_cfg ;
 int ipv4_srcaddrtab ;

void
in_gre_init(void)
{

 if (!IS_DEFAULT_VNET(curvnet))
  return;
 ipv4_srcaddrtab = ip_encap_register_srcaddr(in_gre_srcaddr,
     ((void*)0), M_WAITOK);
 ecookie = ip_encap_attach(&ipv4_encap_cfg, ((void*)0), M_WAITOK);
}
