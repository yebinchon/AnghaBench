
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cookie; } ;


 int GIF_WAIT () ;
 scalar_t__ IS_DEFAULT_VNET (int ) ;
 int * V_ipv6_hashtbl ;
 int * V_ipv6_srchashtbl ;
 int curvnet ;
 int gif_hashdestroy (int *) ;
 int ip6_encap_detach (int ) ;
 int ip6_encap_unregister_srcaddr (int ) ;
 TYPE_1__* ipv6_encap_cfg ;
 int ipv6_srcaddrtab ;
 int nitems (TYPE_1__*) ;

void
in6_gif_uninit(void)
{
 int i;

 if (IS_DEFAULT_VNET(curvnet)) {
  for (i = 0; i < nitems(ipv6_encap_cfg); i++)
   ip6_encap_detach(ipv6_encap_cfg[i].cookie);
  ip6_encap_unregister_srcaddr(ipv6_srcaddrtab);
 }
 if (V_ipv6_hashtbl != ((void*)0)) {
  gif_hashdestroy(V_ipv6_hashtbl);
  V_ipv6_hashtbl = ((void*)0);
  GIF_WAIT();
  gif_hashdestroy(V_ipv6_srchashtbl);
 }
}
