
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cookie; } ;


 int GIF_WAIT () ;
 scalar_t__ IS_DEFAULT_VNET (int ) ;
 int * V_ipv4_hashtbl ;
 int * V_ipv4_srchashtbl ;
 int curvnet ;
 int gif_hashdestroy (int *) ;
 int ip_encap_detach (int ) ;
 int ip_encap_unregister_srcaddr (int ) ;
 TYPE_1__* ipv4_encap_cfg ;
 int ipv4_srcaddrtab ;
 int nitems (TYPE_1__*) ;

void
in_gif_uninit(void)
{
 int i;

 if (IS_DEFAULT_VNET(curvnet)) {
  for (i = 0; i < nitems(ipv4_encap_cfg); i++)
   ip_encap_detach(ipv4_encap_cfg[i].cookie);
  ip_encap_unregister_srcaddr(ipv4_srcaddrtab);
 }
 if (V_ipv4_hashtbl != ((void*)0)) {
  gif_hashdestroy(V_ipv4_hashtbl);
  V_ipv4_hashtbl = ((void*)0);
  GIF_WAIT();
  gif_hashdestroy(V_ipv4_srchashtbl);
 }
}
