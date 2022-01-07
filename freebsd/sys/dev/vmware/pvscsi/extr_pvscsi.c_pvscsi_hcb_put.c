
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvscsi_softc {int free_list; int lock; } ;
struct pvscsi_hcb {int recovery; int * e; int * ccb; } ;


 int MA_OWNED ;
 int PVSCSI_HCB_NONE ;
 int SLIST_INSERT_HEAD (int *,struct pvscsi_hcb*,int ) ;
 int links ;
 int mtx_assert (int *,int ) ;

__attribute__((used)) static void
pvscsi_hcb_put(struct pvscsi_softc *sc, struct pvscsi_hcb *hcb)
{

 mtx_assert(&sc->lock, MA_OWNED);
 hcb->ccb = ((void*)0);
 hcb->e = ((void*)0);
 hcb->recovery = PVSCSI_HCB_NONE;
 SLIST_INSERT_HEAD(&sc->free_list, hcb, links);
}
