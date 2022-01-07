
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_mv_softc {int ** phy; int dev; int node; } ;


 int ENOENT ;
 int MV_MAX_LANES ;
 int device_printf (int ,char*,int) ;
 int phy_enable (int *) ;
 int phy_get_by_ofw_idx (int ,int ,int,int **) ;
 int phy_release (int *) ;

__attribute__((used)) static int
pci_mv_phy_init(struct pci_mv_softc *sc)
{
 int i, rv;

 for (i = 0; i < MV_MAX_LANES; i++) {
  rv = phy_get_by_ofw_idx(sc->dev, sc->node, i, &(sc->phy[i]));
  if (rv != 0 && rv != ENOENT) {
     device_printf(sc->dev, "Cannot get phy[%d]\n", i);
     goto fail;
    }
    if (sc->phy[i] == ((void*)0))
     continue;
    rv = phy_enable(sc->phy[i]);
    if (rv != 0) {
     device_printf(sc->dev, "Cannot enable phy[%d]\n", i);
     goto fail;
    }
   }
   return (0);

fail:
 for (i = 0; i < MV_MAX_LANES; i++) {
  if (sc->phy[i] == ((void*)0))
   continue;
  phy_release(sc->phy[i]);
   }

 return (rv);
}
