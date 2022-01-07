
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpr_softc {int mpr_dev; } ;


 int pci_alloc_msi (int ,int*) ;

__attribute__((used)) static int
mpr_alloc_msi(struct mpr_softc *sc, int msgs)
{
 int error;

 error = pci_alloc_msi(sc->mpr_dev, &msgs);
 return (error);
}
