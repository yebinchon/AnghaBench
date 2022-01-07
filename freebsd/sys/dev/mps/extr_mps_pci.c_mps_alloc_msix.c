
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mps_softc {int mps_dev; } ;


 int pci_alloc_msix (int ,int*) ;

__attribute__((used)) static int
mps_alloc_msix(struct mps_softc *sc, int msgs)
{
 int error;

 error = pci_alloc_msix(sc->mps_dev, &msgs);
 return (error);
}
