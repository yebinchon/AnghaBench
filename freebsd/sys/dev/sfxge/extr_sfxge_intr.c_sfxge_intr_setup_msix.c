
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfxge_intr {int n_alloc; struct resource* msix_res; int type; } ;
struct sfxge_softc {int evq_max; struct sfxge_intr intr; int dev; } ;
struct resource {int dummy; } ;
typedef int device_t ;


 int EFX_INTR_MESSAGE ;
 int EINVAL ;
 int ENOMEM ;
 int KASSERT (int,char*) ;
 int MIN (int,int ) ;
 int PCIR_BAR (int) ;
 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 struct resource* bus_alloc_resource_any (int ,int ,int*,int ) ;
 int bus_release_resource (int ,int ,int,struct resource*) ;
 scalar_t__ pci_alloc_msix (int ,int*) ;
 int pci_msix_count (int ) ;
 int pci_release_msi (int ) ;
 scalar_t__ sfxge_intr_alloc (struct sfxge_softc*,int) ;

__attribute__((used)) static int
sfxge_intr_setup_msix(struct sfxge_softc *sc)
{
 struct sfxge_intr *intr;
 struct resource *resp;
 device_t dev;
 int count;
 int rid;

 dev = sc->dev;
 intr = &sc->intr;


 count = pci_msix_count(dev);
 if (count == 0)
  return (EINVAL);


 KASSERT(sc->evq_max > 0, ("evq_max is zero"));
 count = MIN(count, sc->evq_max);

 rid = PCIR_BAR(4);
 resp = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid, RF_ACTIVE);
 if (resp == ((void*)0))
  return (ENOMEM);

 if (pci_alloc_msix(dev, &count) != 0) {
  bus_release_resource(dev, SYS_RES_MEMORY, rid, resp);
  return (ENOMEM);
 }


 if (sfxge_intr_alloc(sc, count) != 0) {
  bus_release_resource(dev, SYS_RES_MEMORY, rid, resp);
  pci_release_msi(dev);
  return (ENOMEM);
 }

 intr->type = EFX_INTR_MESSAGE;
 intr->n_alloc = count;
 intr->msix_res = resp;

 return (0);
}
