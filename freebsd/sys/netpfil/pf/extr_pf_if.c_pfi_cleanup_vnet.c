
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pfi_kif {TYPE_2__* pfik_ifp; TYPE_1__* pfik_group; } ;
struct TYPE_4__ {int * if_pf_kif; } ;
struct TYPE_3__ {int * ifg_pf_kif; } ;


 struct pfi_kif* LIST_FIRST (int *) ;
 int LIST_REMOVE (struct pfi_kif*,int ) ;
 int PFI_MTYPE ;
 int PF_RULES_WASSERT () ;
 struct pfi_kif* RB_MIN (int ,int *) ;
 int RB_REMOVE (int ,int *,struct pfi_kif*) ;
 int * V_pfi_all ;
 struct pfi_kif* V_pfi_buffer ;
 int V_pfi_ifs ;
 int V_pfi_unlinked_kifs ;
 int free (struct pfi_kif*,int ) ;
 int if_rele (TYPE_2__*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int pfi_ifhead ;
 int pfi_unlnkdkifs_mtx ;
 int pfik_list ;

void
pfi_cleanup_vnet(void)
{
 struct pfi_kif *kif;

 PF_RULES_WASSERT();

 V_pfi_all = ((void*)0);
 while ((kif = RB_MIN(pfi_ifhead, &V_pfi_ifs))) {
  RB_REMOVE(pfi_ifhead, &V_pfi_ifs, kif);
  if (kif->pfik_group)
   kif->pfik_group->ifg_pf_kif = ((void*)0);
  if (kif->pfik_ifp) {
   if_rele(kif->pfik_ifp);
   kif->pfik_ifp->if_pf_kif = ((void*)0);
  }
  free(kif, PFI_MTYPE);
 }

 mtx_lock(&pfi_unlnkdkifs_mtx);
 while ((kif = LIST_FIRST(&V_pfi_unlinked_kifs))) {
  LIST_REMOVE(kif, pfik_list);
  free(kif, PFI_MTYPE);
 }
 mtx_unlock(&pfi_unlnkdkifs_mtx);

 free(V_pfi_buffer, PFI_MTYPE);
}
