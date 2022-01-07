
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opalpci_softc {scalar_t__ base_msi_irq; int * msi_vmem; } ;
typedef int device_t ;


 int ENODEV ;
 struct opalpci_softc* device_get_softc (int ) ;
 int vmem_xfree (int *,scalar_t__,int) ;

__attribute__((used)) static int
opalpci_release_msi(device_t dev, device_t child, int count, int *irqs)
{
 struct opalpci_softc *sc;

 sc = device_get_softc(dev);
 if (sc->msi_vmem == ((void*)0))
  return (ENODEV);

 vmem_xfree(sc->msi_vmem, irqs[0] - sc->base_msi_irq, count);
 return (0);
}
