
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct malo_softc {int malo_invalid; int malo_dmat; } ;
struct malo_pci_softc {scalar_t__ malo_msi; int * malo_res_mem; int malo_mem_spec; int * malo_res_irq; int malo_irq_spec; int * malo_intrhand; struct malo_softc malo_sc; } ;
typedef int device_t ;


 int MALO_MSI_MESSAGES ;
 int bus_child_present (int ) ;
 int bus_dma_tag_destroy (int ) ;
 int bus_generic_detach (int ) ;
 int bus_release_resources (int ,int ,int *) ;
 int bus_teardown_intr (int ,int ,int ) ;
 struct malo_pci_softc* device_get_softc (int ) ;
 int malo_detach (struct malo_softc*) ;
 int pci_release_msi (int ) ;

__attribute__((used)) static int
malo_pci_detach(device_t dev)
{
 int i;
 struct malo_pci_softc *psc = device_get_softc(dev);
 struct malo_softc *sc = &psc->malo_sc;


 sc->malo_invalid = !bus_child_present(dev);

 malo_detach(sc);

 bus_generic_detach(dev);

 if (psc->malo_msi == 0)
  bus_teardown_intr(dev, psc->malo_res_irq[0],
      psc->malo_intrhand[0]);
 else {
  for (i = 0; i < MALO_MSI_MESSAGES; i++)
   bus_teardown_intr(dev, psc->malo_res_irq[i],
       psc->malo_intrhand[i]);

  pci_release_msi(dev);
 }

 bus_release_resources(dev, psc->malo_irq_spec, psc->malo_res_irq);
 bus_dma_tag_destroy(sc->malo_dmat);
 bus_release_resources(dev, psc->malo_mem_spec, psc->malo_res_mem);

 return (0);
}
