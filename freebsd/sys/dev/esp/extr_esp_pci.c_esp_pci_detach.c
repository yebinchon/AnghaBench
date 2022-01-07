
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ncr53c9x_softc {int dummy; } ;
struct esp_pci_softc {int * sc_res; int sc_pdmat; int sc_xferdmat; int sc_xferdmam; int sc_ih; int sc_dev; struct ncr53c9x_softc sc_ncr53c9x; } ;
typedef int device_t ;


 size_t ESP_PCI_RES_INTR ;
 int NCR_LOCK_DESTROY (struct ncr53c9x_softc*) ;
 int bus_dma_tag_destroy (int ) ;
 int bus_dmamap_destroy (int ,int ) ;
 int bus_release_resources (int ,int ,int *) ;
 int bus_teardown_intr (int ,int ,int ) ;
 struct esp_pci_softc* device_get_softc (int ) ;
 int esp_pci_res_spec ;
 int ncr53c9x_detach (struct ncr53c9x_softc*) ;

__attribute__((used)) static int
esp_pci_detach(device_t dev)
{
 struct ncr53c9x_softc *sc;
 struct esp_pci_softc *esc;
 int error;

 esc = device_get_softc(dev);
 sc = &esc->sc_ncr53c9x;

 bus_teardown_intr(esc->sc_dev, esc->sc_res[ESP_PCI_RES_INTR],
     esc->sc_ih);
 error = ncr53c9x_detach(sc);
 if (error != 0)
  return (error);
 bus_dmamap_destroy(esc->sc_xferdmat, esc->sc_xferdmam);
 bus_dma_tag_destroy(esc->sc_xferdmat);
 bus_dma_tag_destroy(esc->sc_pdmat);
 bus_release_resources(dev, esp_pci_res_spec, esc->sc_res);
 NCR_LOCK_DESTROY(sc);

 return (0);
}
