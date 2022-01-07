
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfxge_intr {int n_alloc; int type; struct sfxge_intr_hdl* table; } ;
struct sfxge_softc {struct sfxge_intr intr; int dev; } ;
struct sfxge_intr_hdl {int dummy; } ;
typedef int device_t ;


 int EFX_INTR_MESSAGE ;
 int EINVAL ;
 int ENOMEM ;
 int pci_alloc_msi (int ,int*) ;
 scalar_t__ pci_msi_count (int ) ;
 int pci_release_msi (int ) ;
 scalar_t__ sfxge_intr_alloc (struct sfxge_softc*,int) ;

__attribute__((used)) static int
sfxge_intr_setup_msi(struct sfxge_softc *sc)
{
 struct sfxge_intr_hdl *table;
 struct sfxge_intr *intr;
 device_t dev;
 int count;
 int error;

 dev = sc->dev;
 intr = &sc->intr;
 table = intr->table;






 count = pci_msi_count(dev) ? 1 : 0;
 if (count == 0)
  return (EINVAL);

 if ((error = pci_alloc_msi(dev, &count)) != 0)
  return (ENOMEM);


 if (sfxge_intr_alloc(sc, count) != 0) {
  pci_release_msi(dev);
  return (ENOMEM);
 }

 intr->type = EFX_INTR_MESSAGE;
 intr->n_alloc = count;

 return (0);
}
