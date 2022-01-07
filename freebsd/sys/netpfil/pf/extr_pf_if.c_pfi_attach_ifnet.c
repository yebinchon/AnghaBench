
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pfi_kif {struct ifnet* pfik_ifp; } ;
struct ifnet {struct pfi_kif* if_pf_kif; int if_xname; } ;


 int PF_RULES_WASSERT () ;
 int V_pfi_update ;
 int if_ref (struct ifnet*) ;
 struct pfi_kif* pfi_kif_attach (struct pfi_kif*,int ) ;
 int pfi_kif_update (struct pfi_kif*) ;

__attribute__((used)) static void
pfi_attach_ifnet(struct ifnet *ifp, struct pfi_kif *kif)
{

 PF_RULES_WASSERT();

 V_pfi_update++;
 kif = pfi_kif_attach(kif, ifp->if_xname);
 if_ref(ifp);
 kif->pfik_ifp = ifp;
 ifp->if_pf_kif = kif;
 pfi_kif_update(kif);
}
