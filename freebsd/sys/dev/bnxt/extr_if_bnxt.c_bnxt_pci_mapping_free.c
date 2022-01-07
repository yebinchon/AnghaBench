
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * res; int rid; } ;
struct TYPE_4__ {int * res; int rid; } ;
struct bnxt_softc {TYPE_1__ doorbell_bar; int dev; TYPE_2__ hwrm_bar; } ;


 int SYS_RES_MEMORY ;
 int bus_release_resource (int ,int ,int ,int *) ;

__attribute__((used)) static void
bnxt_pci_mapping_free(struct bnxt_softc *softc)
{
 if (softc->hwrm_bar.res != ((void*)0))
  bus_release_resource(softc->dev, SYS_RES_MEMORY,
      softc->hwrm_bar.rid, softc->hwrm_bar.res);
 softc->hwrm_bar.res = ((void*)0);

 if (softc->doorbell_bar.res != ((void*)0))
  bus_release_resource(softc->dev, SYS_RES_MEMORY,
      softc->doorbell_bar.rid, softc->doorbell_bar.res);
 softc->doorbell_bar.res = ((void*)0);
}
