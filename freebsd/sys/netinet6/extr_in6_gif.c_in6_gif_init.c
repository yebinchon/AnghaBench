
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int encap; int cookie; } ;


 int IS_DEFAULT_VNET (int ) ;
 int M_WAITOK ;
 int curvnet ;
 int in6_gif_srcaddr ;
 int ip6_encap_attach (int *,int *,int ) ;
 int ip6_encap_register_srcaddr (int ,int *,int ) ;
 TYPE_1__* ipv6_encap_cfg ;
 int ipv6_srcaddrtab ;
 int nitems (TYPE_1__*) ;

void
in6_gif_init(void)
{
 int i;

 if (!IS_DEFAULT_VNET(curvnet))
  return;

 ipv6_srcaddrtab = ip6_encap_register_srcaddr(in6_gif_srcaddr,
     ((void*)0), M_WAITOK);
 for (i = 0; i < nitems(ipv6_encap_cfg); i++)
  ipv6_encap_cfg[i].cookie = ip6_encap_attach(
      &ipv6_encap_cfg[i].encap, ((void*)0), M_WAITOK);
}
