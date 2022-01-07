
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gre_list {int dummy; } ;


 int GRE_WAIT () ;
 scalar_t__ IS_DEFAULT_VNET (int ) ;
 struct gre_list* V_ipv6_hashtbl ;
 scalar_t__ V_ipv6_sockets ;
 struct gre_list* V_ipv6_srchashtbl ;
 int curvnet ;
 int ecookie ;
 int gre_hashdestroy (struct gre_list*) ;
 int ip6_encap_detach (int ) ;
 int ip6_encap_unregister_srcaddr (int ) ;
 int ipv6_srcaddrtab ;

void
in6_gre_uninit(void)
{

 if (IS_DEFAULT_VNET(curvnet)) {
  ip6_encap_detach(ecookie);
  ip6_encap_unregister_srcaddr(ipv6_srcaddrtab);
 }
 if (V_ipv6_hashtbl != ((void*)0)) {
  gre_hashdestroy(V_ipv6_hashtbl);
  V_ipv6_hashtbl = ((void*)0);
  GRE_WAIT();
  gre_hashdestroy(V_ipv6_srchashtbl);
  gre_hashdestroy((struct gre_list *)V_ipv6_sockets);
 }
}
