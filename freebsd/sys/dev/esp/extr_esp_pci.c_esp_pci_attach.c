
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ncr53c9x_softc {int sc_id; int sc_cfg1; int sc_cfg2; int sc_cfg3; int sc_cfg4; int sc_features; int sc_freq; int sc_minsync; int sc_maxoffset; int sc_extended_geom; int sc_dev; int sc_lock; int sc_maxxfer; int sc_cfg3_fscsi; int sc_rev; int * sc_glue; } ;
struct esp_pci_softc {int * sc_res; int sc_pdmat; int sc_xferdmat; int sc_xferdmam; int sc_ih; int sc_dev; struct ncr53c9x_softc sc_ncr53c9x; } ;
typedef int device_t ;


 int BUS_DMA_ALLOCNOW ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int BUS_SPACE_MAXSIZE_32BIT ;
 int BUS_SPACE_UNRESTRICTED ;
 int DFLTPHYS ;
 size_t ESP_PCI_RES_INTR ;
 int INTR_MPSAFE ;
 int INTR_TYPE_CAM ;
 int MDL_SEG_SIZE ;
 int NCRAMDCFG3_FCLK ;
 int NCRAMDCFG3_FSCSI ;
 int NCRAMDCFG3_IDM ;
 int NCRAMDCFG4_GE12NS ;
 int NCRAMDCFG4_RADE ;
 int NCRCFG1_PARENB ;
 int NCRCFG2_FE ;
 int NCRCFG2_SCSI2 ;
 int NCR_F_DMASELECT ;
 int NCR_F_FASTSCSI ;
 int NCR_LOCK_DESTROY (struct ncr53c9x_softc*) ;
 int NCR_LOCK_INIT (struct ncr53c9x_softc*) ;
 int NCR_VARIANT_AM53C974 ;
 int PAGE_SIZE ;
 int bus_alloc_resources (int ,int ,int *) ;
 int bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int ,int,int ,int ,int *,int *,int *) ;
 int bus_dma_tag_destroy (int ) ;
 int bus_dmamap_create (int ,int ,int *) ;
 int bus_dmamap_destroy (int ,int ) ;
 int bus_get_dma_tag (int ) ;
 int bus_release_resources (int ,int ,int *) ;
 int bus_setup_intr (int ,int ,int,int *,int ,struct ncr53c9x_softc*,int *) ;
 int bus_teardown_intr (int ,int ,int ) ;
 int * busdma_lock_mutex ;
 struct esp_pci_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int esp_pci_glue ;
 int esp_pci_res_spec ;
 int ncr53c9x_attach (struct ncr53c9x_softc*) ;
 int ncr53c9x_intr ;
 int pci_enable_busmaster (int ) ;

__attribute__((used)) static int
esp_pci_attach(device_t dev)
{
 struct esp_pci_softc *esc;
 struct ncr53c9x_softc *sc;
 int error;

 esc = device_get_softc(dev);
 sc = &esc->sc_ncr53c9x;

 NCR_LOCK_INIT(sc);

 esc->sc_dev = dev;
 sc->sc_glue = &esp_pci_glue;

 pci_enable_busmaster(dev);

 error = bus_alloc_resources(dev, esp_pci_res_spec, esc->sc_res);
 if (error != 0) {
  device_printf(dev, "failed to allocate resources\n");
  bus_release_resources(dev, esp_pci_res_spec, esc->sc_res);
  return (error);
 }

 error = bus_dma_tag_create(bus_get_dma_tag(dev), 1, 0,
     BUS_SPACE_MAXADDR_32BIT, BUS_SPACE_MAXADDR, ((void*)0), ((void*)0),
     BUS_SPACE_MAXSIZE_32BIT, BUS_SPACE_UNRESTRICTED,
     BUS_SPACE_MAXSIZE_32BIT, 0, ((void*)0), ((void*)0), &esc->sc_pdmat);
 if (error != 0) {
  device_printf(dev, "cannot create parent DMA tag\n");
  goto fail_res;
 }
 sc->sc_id = 7;
 sc->sc_cfg1 = sc->sc_id | NCRCFG1_PARENB;
 sc->sc_cfg2 = NCRCFG2_SCSI2 | NCRCFG2_FE;
 sc->sc_cfg3 = NCRAMDCFG3_IDM | NCRAMDCFG3_FCLK;
 sc->sc_cfg4 = NCRAMDCFG4_GE12NS | NCRAMDCFG4_RADE;
 sc->sc_rev = NCR_VARIANT_AM53C974;
 sc->sc_features = NCR_F_FASTSCSI | NCR_F_DMASELECT;
 sc->sc_cfg3_fscsi = NCRAMDCFG3_FSCSI;
 sc->sc_freq = 40;
 sc->sc_minsync = 1000 / sc->sc_freq;

 sc->sc_maxxfer = DFLTPHYS;
 sc->sc_maxoffset = 15;
 sc->sc_extended_geom = 1;
 error = bus_dma_tag_create(esc->sc_pdmat, PAGE_SIZE, 0,
     BUS_SPACE_MAXADDR_32BIT, BUS_SPACE_MAXADDR, ((void*)0), ((void*)0),
     0x1000, 1, 0x1000, BUS_DMA_ALLOCNOW,
     busdma_lock_mutex, &sc->sc_lock, &esc->sc_xferdmat);
 if (error != 0) {
  device_printf(dev, "cannot create transfer DMA tag\n");
  goto fail_pdmat;
 }
 error = bus_dmamap_create(esc->sc_xferdmat, 0, &esc->sc_xferdmam);
 if (error != 0) {
  device_printf(dev, "cannot create transfer DMA map\n");
  goto fail_xferdmat;
 }

 error = bus_setup_intr(dev, esc->sc_res[ESP_PCI_RES_INTR],
     INTR_MPSAFE | INTR_TYPE_CAM, ((void*)0), ncr53c9x_intr, sc,
     &esc->sc_ih);
 if (error != 0) {
  device_printf(dev, "cannot set up interrupt\n");
  goto fail_xferdmam;
 }


 sc->sc_dev = esc->sc_dev;
 error = ncr53c9x_attach(sc);
 if (error != 0) {
  device_printf(esc->sc_dev, "ncr53c9x_attach failed\n");
  goto fail_intr;
 }

 return (0);

 fail_intr:
  bus_teardown_intr(esc->sc_dev, esc->sc_res[ESP_PCI_RES_INTR],
     esc->sc_ih);
 fail_xferdmam:
 bus_dmamap_destroy(esc->sc_xferdmat, esc->sc_xferdmam);
 fail_xferdmat:
 bus_dma_tag_destroy(esc->sc_xferdmat);
 fail_pdmat:
 bus_dma_tag_destroy(esc->sc_pdmat);
 fail_res:
 bus_release_resources(dev, esp_pci_res_spec, esc->sc_res);
 NCR_LOCK_DESTROY(sc);

 return (error);
}
