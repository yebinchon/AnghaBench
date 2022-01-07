
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct malo_softc {int malo_invalid; int malo_dmat; void* malo_io1h; void* malo_io1t; void* malo_io0h; void* malo_io0t; int malo_dev; } ;
struct malo_pci_softc {int malo_msi; int * malo_res_mem; int malo_mem_spec; int * malo_res_irq; int malo_irq_spec; int * malo_intrhand; struct malo_softc malo_sc; } ;
typedef int device_t ;


 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int BUS_SPACE_MAXSIZE ;
 int ENXIO ;
 int INTR_MPSAFE ;
 int INTR_TYPE_NET ;
 int MALO_MSI_MESSAGES ;
 int PCIY_EXPRESS ;
 scalar_t__ bootverbose ;
 int bus_alloc_resources (int ,int ,int *) ;
 scalar_t__ bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int ,int ,int ,int ,int *,int *,int *) ;
 int bus_dma_tag_destroy (int ) ;
 int bus_get_dma_tag (int ) ;
 int bus_release_resources (int ,int ,int *) ;
 int bus_setup_intr (int ,int ,int,int ,int *,struct malo_softc*,int *) ;
 int bus_teardown_intr (int ,int ,int ) ;
 struct malo_pci_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int malo_attach (int ,struct malo_softc*) ;
 int malo_intr ;
 int malo_res_spec_legacy ;
 int malo_res_spec_mem ;
 int malo_res_spec_msi ;
 scalar_t__ msi_disable ;
 scalar_t__ pci_alloc_msi (int ,int*) ;
 int pci_enable_busmaster (int ) ;
 scalar_t__ pci_find_cap (int ,int ,int*) ;
 int pci_get_device (int ) ;
 int pci_msi_count (int ) ;
 int pci_release_msi (int ) ;
 void* rman_get_bushandle (int ) ;
 void* rman_get_bustag (int ) ;

__attribute__((used)) static int
malo_pci_attach(device_t dev)
{
 int error = ENXIO, i, msic, reg;
 struct malo_pci_softc *psc = device_get_softc(dev);
 struct malo_softc *sc = &psc->malo_sc;

 sc->malo_dev = dev;

 pci_enable_busmaster(dev);




 psc->malo_mem_spec = malo_res_spec_mem;
 error = bus_alloc_resources(dev, psc->malo_mem_spec, psc->malo_res_mem);
 if (error) {
  device_printf(dev, "couldn't allocate memory resources\n");
  return (ENXIO);
 }




 sc->malo_invalid = 1;

 if (pci_find_cap(dev, PCIY_EXPRESS, &reg) == 0) {
  msic = pci_msi_count(dev);
  if (bootverbose)
   device_printf(dev, "MSI count : %d\n", msic);
 } else
  msic = 0;

 psc->malo_irq_spec = malo_res_spec_legacy;
 if (msic == MALO_MSI_MESSAGES && msi_disable == 0) {
  if (pci_alloc_msi(dev, &msic) == 0) {
   if (msic == MALO_MSI_MESSAGES) {
    device_printf(dev, "Using %d MSI messages\n",
        msic);
    psc->malo_irq_spec = malo_res_spec_msi;
    psc->malo_msi = 1;
   } else
    pci_release_msi(dev);
  }
 }

 error = bus_alloc_resources(dev, psc->malo_irq_spec, psc->malo_res_irq);
 if (error) {
  device_printf(dev, "couldn't allocate IRQ resources\n");
  goto bad;
 }

 if (psc->malo_msi == 0)
  error = bus_setup_intr(dev, psc->malo_res_irq[0],
      INTR_TYPE_NET | INTR_MPSAFE, malo_intr, ((void*)0), sc,
      &psc->malo_intrhand[0]);
 else {
  for (i = 0; i < MALO_MSI_MESSAGES; i++) {
   error = bus_setup_intr(dev, psc->malo_res_irq[i],
       INTR_TYPE_NET | INTR_MPSAFE, malo_intr, ((void*)0), sc,
       &psc->malo_intrhand[i]);
   if (error != 0)
    break;
  }
 }




 if (bus_dma_tag_create(bus_get_dma_tag(dev),
          1, 0,
          BUS_SPACE_MAXADDR_32BIT,
          BUS_SPACE_MAXADDR,
          ((void*)0), ((void*)0),
          BUS_SPACE_MAXSIZE,
          0,
          BUS_SPACE_MAXSIZE,
          0,
          ((void*)0),
          ((void*)0),
          &sc->malo_dmat)) {
  device_printf(dev, "cannot allocate DMA tag\n");
  goto bad1;
 }

 sc->malo_io0t = rman_get_bustag(psc->malo_res_mem[0]);
 sc->malo_io0h = rman_get_bushandle(psc->malo_res_mem[0]);
 sc->malo_io1t = rman_get_bustag(psc->malo_res_mem[1]);
 sc->malo_io1h = rman_get_bushandle(psc->malo_res_mem[1]);

 error = malo_attach(pci_get_device(dev), sc);

 if (error != 0)
  goto bad2;

 return (error);

bad2:
 bus_dma_tag_destroy(sc->malo_dmat);
bad1:
 if (psc->malo_msi == 0)
  bus_teardown_intr(dev, psc->malo_res_irq[0],
      psc->malo_intrhand[0]);
 else {
  for (i = 0; i < MALO_MSI_MESSAGES; i++)
   bus_teardown_intr(dev, psc->malo_res_irq[i],
       psc->malo_intrhand[i]);
 }
 bus_release_resources(dev, psc->malo_irq_spec, psc->malo_res_irq);
bad:
 if (psc->malo_msi != 0)
  pci_release_msi(dev);
 bus_release_resources(dev, psc->malo_mem_spec, psc->malo_res_mem);

 return (error);
}
