
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int f_min; int host_ocr; int caps; int f_max; } ;
struct dwmmc_softc {int use_auto_stop; scalar_t__ desc_count; int fifo_depth; int desc_ring_paddr; TYPE_1__ host; int max_hz; int use_pio; scalar_t__ pwren_inverted; int intr_cookie; int * res; int dev; } ;
typedef int device_t ;


 scalar_t__ DESC_MAX ;
 int DWMMC_ERR_FLAGS ;
 int DWMMC_LOCK_INIT (struct dwmmc_softc*) ;
 int ENXIO ;
 int INTR_MPSAFE ;
 int INTR_TYPE_NET ;
 int MMC_CAP_HSPEED ;
 int MMC_CAP_SIGNALING_330 ;
 int MMC_OCR_320_330 ;
 int MMC_OCR_330_340 ;
 int READ4 (struct dwmmc_softc*,int ) ;
 int SDMMC_CTRL ;
 int SDMMC_CTRL_DMA_RESET ;
 int SDMMC_CTRL_FIFO_RESET ;
 int SDMMC_CTRL_INT_ENABLE ;
 int SDMMC_CTRL_RESET ;
 int SDMMC_DBADDR ;
 int SDMMC_FIFOTH ;
 int SDMMC_FIFOTH_RXWMARK_S ;
 int SDMMC_IDINTEN ;
 int SDMMC_IDINTEN_MASK ;
 int SDMMC_IDINTEN_NI ;
 int SDMMC_IDINTEN_RI ;
 int SDMMC_IDINTEN_TI ;
 int SDMMC_IDSTS ;
 int SDMMC_INTMASK ;
 int SDMMC_INTMASK_ACD ;
 int SDMMC_INTMASK_CD ;
 int SDMMC_INTMASK_CMD_DONE ;
 int SDMMC_INTMASK_DTO ;
 int SDMMC_INTMASK_RXDR ;
 int SDMMC_INTMASK_TXDR ;
 int SDMMC_PWREN ;
 int SDMMC_RINTSTS ;
 int SDMMC_TMOUT ;
 int SDMMC_VERID ;
 int WRITE4 (struct dwmmc_softc*,int ,int) ;
 scalar_t__ bus_alloc_resources (int ,int ,int *) ;
 int bus_generic_attach (int ) ;
 int bus_setup_intr (int ,int ,int,int *,int ,struct dwmmc_softc*,int *) ;
 int device_add_child (int ,char*,int) ;
 struct dwmmc_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 scalar_t__ dma_setup (struct dwmmc_softc*) ;
 int dma_stop (struct dwmmc_softc*) ;
 scalar_t__ dwmmc_ctrl_reset (struct dwmmc_softc*,int) ;
 int dwmmc_intr ;
 int dwmmc_setup_bus (struct dwmmc_softc*,int) ;
 int dwmmc_spec ;
 int parse_fdt (struct dwmmc_softc*) ;

int
dwmmc_attach(device_t dev)
{
 struct dwmmc_softc *sc;
 int error;
 int slot;

 sc = device_get_softc(dev);

 sc->dev = dev;


 sc->use_auto_stop = 1;

 error = parse_fdt(sc);
 if (error != 0) {
  device_printf(dev, "Can't get FDT property.\n");
  return (ENXIO);
 }

 DWMMC_LOCK_INIT(sc);

 if (bus_alloc_resources(dev, dwmmc_spec, sc->res)) {
  device_printf(dev, "could not allocate resources\n");
  return (ENXIO);
 }


 error = bus_setup_intr(dev, sc->res[1], INTR_TYPE_NET | INTR_MPSAFE,
     ((void*)0), dwmmc_intr, sc, &sc->intr_cookie);
 if (error != 0) {
  device_printf(dev, "could not setup interrupt handler.\n");
  return (ENXIO);
 }

 device_printf(dev, "Hardware version ID is %04x\n",
  READ4(sc, SDMMC_VERID) & 0xffff);

 if (sc->desc_count == 0)
  sc->desc_count = DESC_MAX;


 slot = 0;
 if (sc->pwren_inverted) {
  WRITE4(sc, SDMMC_PWREN, (0 << slot));
 } else {
  WRITE4(sc, SDMMC_PWREN, (1 << slot));
 }


 if (dwmmc_ctrl_reset(sc, (SDMMC_CTRL_RESET |
      SDMMC_CTRL_FIFO_RESET |
      SDMMC_CTRL_DMA_RESET)))
  return (ENXIO);

 dwmmc_setup_bus(sc, sc->host.f_min);

 if (sc->fifo_depth == 0) {
  sc->fifo_depth = 1 +
      ((READ4(sc, SDMMC_FIFOTH) >> SDMMC_FIFOTH_RXWMARK_S) & 0xfff);
  device_printf(dev, "No fifo-depth, using FIFOTH %x\n",
      sc->fifo_depth);
 }

 if (!sc->use_pio) {
  dma_stop(sc);
  if (dma_setup(sc))
   return (ENXIO);


  WRITE4(sc, SDMMC_DBADDR, sc->desc_ring_paddr);


  WRITE4(sc, SDMMC_IDSTS, SDMMC_IDINTEN_MASK);
  WRITE4(sc, SDMMC_IDINTEN, (SDMMC_IDINTEN_NI |
        SDMMC_IDINTEN_RI |
        SDMMC_IDINTEN_TI));
 }


 WRITE4(sc, SDMMC_RINTSTS, 0xffffffff);
 WRITE4(sc, SDMMC_INTMASK, 0);


 WRITE4(sc, SDMMC_TMOUT, 0xffffffff);


 WRITE4(sc, SDMMC_RINTSTS, 0xffffffff);
 WRITE4(sc, SDMMC_INTMASK, (SDMMC_INTMASK_CMD_DONE |
       SDMMC_INTMASK_DTO |
       SDMMC_INTMASK_ACD |
       SDMMC_INTMASK_TXDR |
       SDMMC_INTMASK_RXDR |
       DWMMC_ERR_FLAGS |
       SDMMC_INTMASK_CD));
 WRITE4(sc, SDMMC_CTRL, SDMMC_CTRL_INT_ENABLE);

 sc->host.f_min = 400000;
 sc->host.f_max = sc->max_hz;
 sc->host.host_ocr = MMC_OCR_320_330 | MMC_OCR_330_340;
 sc->host.caps |= MMC_CAP_HSPEED;
 sc->host.caps |= MMC_CAP_SIGNALING_330;

 device_add_child(dev, "mmc", -1);
 return (bus_generic_attach(dev));
}
