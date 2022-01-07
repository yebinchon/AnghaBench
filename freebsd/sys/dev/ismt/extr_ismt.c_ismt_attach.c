
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ismt_softc {int mmio_rid; int desc_bus_addr; int dma_buffer_bus_addr; int using_msi; int intr_rid; int intr_handle; int * intr_res; int * mmio_res; int dma_buffer; int dma_buffer_dma_map; int dma_buffer_dma_tag; int desc; int desc_dma_map; int desc_dma_tag; int mmio_handle; int mmio_tag; int * smbdev; int pcidev; } ;
typedef int device_t ;


 int BUS_DMA_WAITOK ;
 int BUS_SPACE_MAXADDR ;
 int DESC_SIZE ;
 int DMA_BUFFER_SIZE ;
 int ENOMEM ;
 int ENXIO ;
 int INTR_MPSAFE ;
 int INTR_TYPE_MISC ;
 int ISMT_DEBUG (int ,char*,int) ;
 int ISMT_DESC_ENTRIES ;
 int ISMT_MCTRL_MEIE ;
 int ISMT_MDS_MASK ;
 scalar_t__ ISMT_MSTR_MCTRL ;
 scalar_t__ ISMT_MSTR_MDBA ;
 scalar_t__ ISMT_MSTR_MDS ;
 scalar_t__ ISMT_MSTR_MSTS ;
 int PAGE_SIZE ;
 int PCIR_BAR (int ) ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 void* bus_alloc_resource_any (int ,int ,int*,int) ;
 int bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int ,int,int ,int ,int *,int *,int *) ;
 int bus_dmamap_create (int ,int ,int *) ;
 int bus_dmamap_load (int ,int ,int ,int ,int ,int*,int ) ;
 int bus_dmamem_alloc (int ,void**,int ,int *) ;
 int bus_generic_attach (int ) ;
 int bus_get_dma_tag (int ) ;
 int bus_read_4 (int *,scalar_t__) ;
 int bus_setup_intr (int ,int *,int,int *,int ,struct ismt_softc*,int *) ;
 int bus_write_4 (int *,scalar_t__,int) ;
 int * device_add_child (int ,char*,int) ;
 struct ismt_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int ismt_detach (int ) ;
 int ismt_intr ;
 int ismt_single_map ;
 scalar_t__ pci_alloc_msi (int ,int*) ;
 int pci_enable_busmaster (int ) ;
 scalar_t__ pci_msi_count (int ) ;
 int pci_release_msi (int ) ;
 int rman_get_bushandle (int *) ;
 int rman_get_bustag (int *) ;

__attribute__((used)) static int
ismt_attach(device_t dev)
{
 struct ismt_softc *sc = device_get_softc(dev);
 int err, num_vectors, val;

 sc->pcidev = dev;
 pci_enable_busmaster(dev);

 if ((sc->smbdev = device_add_child(dev, "smbus", -1)) == ((void*)0)) {
  device_printf(dev, "no smbus child found\n");
  err = ENXIO;
  goto fail;
 }

 sc->mmio_rid = PCIR_BAR(0);
 sc->mmio_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY,
     &sc->mmio_rid, RF_ACTIVE);
 if (sc->mmio_res == ((void*)0)) {
  device_printf(dev, "cannot allocate mmio region\n");
  err = ENOMEM;
  goto fail;
 }

 sc->mmio_tag = rman_get_bustag(sc->mmio_res);
 sc->mmio_handle = rman_get_bushandle(sc->mmio_res);


 if ((err = bus_generic_attach(dev)) != 0) {
  device_printf(dev, "failed to attach child: %d\n", err);
  err = ENXIO;
  goto fail;
 }

 bus_dma_tag_create(bus_get_dma_tag(dev), 4, PAGE_SIZE,
     BUS_SPACE_MAXADDR, BUS_SPACE_MAXADDR, ((void*)0), ((void*)0),
     DESC_SIZE, 1, DESC_SIZE,
     0, ((void*)0), ((void*)0), &sc->desc_dma_tag);

 bus_dma_tag_create(bus_get_dma_tag(dev), 4, PAGE_SIZE,
     BUS_SPACE_MAXADDR, BUS_SPACE_MAXADDR, ((void*)0), ((void*)0),
     DMA_BUFFER_SIZE, 1, DMA_BUFFER_SIZE,
     0, ((void*)0), ((void*)0), &sc->dma_buffer_dma_tag);

 bus_dmamap_create(sc->desc_dma_tag, 0,
     &sc->desc_dma_map);
 bus_dmamap_create(sc->dma_buffer_dma_tag, 0,
     &sc->dma_buffer_dma_map);

 bus_dmamem_alloc(sc->desc_dma_tag,
     (void **)&sc->desc, BUS_DMA_WAITOK,
     &sc->desc_dma_map);
 bus_dmamem_alloc(sc->dma_buffer_dma_tag,
     (void **)&sc->dma_buffer, BUS_DMA_WAITOK,
     &sc->dma_buffer_dma_map);

 bus_dmamap_load(sc->desc_dma_tag,
     sc->desc_dma_map, sc->desc, DESC_SIZE,
     ismt_single_map, &sc->desc_bus_addr, 0);
 bus_dmamap_load(sc->dma_buffer_dma_tag,
     sc->dma_buffer_dma_map, sc->dma_buffer, DMA_BUFFER_SIZE,
     ismt_single_map, &sc->dma_buffer_bus_addr, 0);

 bus_write_4(sc->mmio_res, ISMT_MSTR_MDBA,
     (sc->desc_bus_addr & 0xFFFFFFFFLL));
 bus_write_4(sc->mmio_res, ISMT_MSTR_MDBA + 4,
     (sc->desc_bus_addr >> 32));


 bus_write_4(sc->mmio_res, ISMT_MSTR_MCTRL, ISMT_MCTRL_MEIE);


 bus_write_4(sc->mmio_res, ISMT_MSTR_MSTS, 0);


 val = bus_read_4(sc->mmio_res, ISMT_MSTR_MDS);
 val &= ~ISMT_MDS_MASK;
 val |= (ISMT_DESC_ENTRIES - 1);
 bus_write_4(sc->mmio_res, ISMT_MSTR_MDS, val);

 sc->using_msi = 1;

 if (pci_msi_count(dev) == 0) {
  sc->using_msi = 0;
  goto intx;
 }

 num_vectors = 1;
 if (pci_alloc_msi(dev, &num_vectors) != 0) {
  sc->using_msi = 0;
  goto intx;
 }

 sc->intr_rid = 1;
 sc->intr_res = bus_alloc_resource_any(dev, SYS_RES_IRQ,
     &sc->intr_rid, RF_ACTIVE);

 if (sc->intr_res == ((void*)0)) {
  sc->using_msi = 0;
  pci_release_msi(dev);
 }

intx:
 if (sc->using_msi == 0) {
  sc->intr_rid = 0;
  sc->intr_res = bus_alloc_resource_any(dev, SYS_RES_IRQ,
      &sc->intr_rid, RF_SHAREABLE | RF_ACTIVE);
  if (sc->intr_res == ((void*)0)) {
   device_printf(dev, "cannot allocate irq\n");
   err = ENXIO;
   goto fail;
  }
 }

 ISMT_DEBUG(dev, "using_msi = %d\n", sc->using_msi);

 err = bus_setup_intr(dev, sc->intr_res,
     INTR_TYPE_MISC | INTR_MPSAFE, ((void*)0), ismt_intr, sc,
     &sc->intr_handle);
 if (err != 0) {
  device_printf(dev, "cannot setup interrupt\n");
  err = ENXIO;
  goto fail;
 }

 return (0);

fail:
 ismt_detach(dev);
 return (err);
}
