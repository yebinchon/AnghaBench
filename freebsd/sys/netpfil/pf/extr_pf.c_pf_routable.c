
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radix_node_head {int dummy; } ;
struct pfi_kif {struct ifnet* pfik_ifp; } ;
struct pf_addr {int v4; int v6; } ;
struct nhop6_basic {struct ifnet* nh_ifp; } ;
struct nhop4_basic {struct ifnet* nh_ifp; } ;
struct ifnet {scalar_t__ if_type; } ;
typedef int sa_family_t ;




 scalar_t__ IFT_ENC ;
 scalar_t__ IN6_IS_SCOPE_EMBED (int *) ;
 int fib4_lookup_nh_basic (int,int ,int ,int ,struct nhop4_basic*) ;
 int fib6_lookup_nh_basic (int,int *,int ,int ,int ,struct nhop6_basic*) ;
 int pf_routable_oldmpath (struct pf_addr*,int,struct pfi_kif*,int) ;
 scalar_t__ rn_mpath_capable (struct radix_node_head*) ;
 struct radix_node_head* rt_tables_get_rnh (int ,int) ;

int
pf_routable(struct pf_addr *addr, sa_family_t af, struct pfi_kif *kif,
    int rtableid)
{






 struct ifnet *ifp;
 if (af == 128 && IN6_IS_SCOPE_EMBED(&addr->v6))
  return (1);

 if (af != 129 && af != 128)
  return (0);


 if (kif != ((void*)0) && kif->pfik_ifp->if_type == IFT_ENC)
  return (1);

 ifp = ((void*)0);

 switch (af) {
 }


 if (kif == ((void*)0))
  return (1);

 if (kif->pfik_ifp == ((void*)0))
  return (0);


 if (kif->pfik_ifp == ifp)
  return (1);
 return (0);
}
