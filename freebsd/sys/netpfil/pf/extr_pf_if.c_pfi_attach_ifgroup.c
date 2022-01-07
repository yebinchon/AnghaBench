
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pfi_kif {struct ifg_group* pfik_group; } ;
struct ifg_group {struct pfi_kif* ifg_pf_kif; int ifg_group; } ;


 int PF_RULES_WASSERT () ;
 int V_pfi_update ;
 struct pfi_kif* pfi_kif_attach (struct pfi_kif*,int ) ;

__attribute__((used)) static void
pfi_attach_ifgroup(struct ifg_group *ifg, struct pfi_kif *kif)
{

 PF_RULES_WASSERT();

 V_pfi_update++;
 kif = pfi_kif_attach(kif, ifg->ifg_group);
 kif->pfik_group = ifg;
 ifg->ifg_pf_kif = kif;
}
