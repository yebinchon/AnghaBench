
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_kauai_softc {int * pioconf; int * wdmaconf; int * udmaconf; scalar_t__ shasta; } ;
typedef int device_t ;


 int ATA_DMA_MASK ;
 int ATA_MODE_MASK ;
 int ATA_PIO0 ;

 int ATA_UDMA5 ;
 int ATA_UDMA6 ;

 struct ata_kauai_softc* device_get_softc (int ) ;
 int * dma_timing_kauai ;
 int * dma_timing_shasta ;
 int min (int,int ) ;
 int * pio_timing_kauai ;
 int * pio_timing_shasta ;
 int * udma_timing_kauai ;
 int * udma_timing_shasta ;

__attribute__((used)) static int
ata_kauai_setmode(device_t dev, int target, int mode)
{
 struct ata_kauai_softc *sc = device_get_softc(dev);

 mode = min(mode,sc->shasta ? ATA_UDMA6 : ATA_UDMA5);

 if (sc->shasta) {
  switch (mode & ATA_DMA_MASK) {
      case 129:
   sc->udmaconf[target]
       = udma_timing_shasta[mode & ATA_MODE_MASK];
   break;
      case 128:
   sc->udmaconf[target] = 0;
   sc->wdmaconf[target]
       = dma_timing_shasta[mode & ATA_MODE_MASK];
   break;
      default:
   sc->pioconf[target]
       = pio_timing_shasta[(mode & ATA_MODE_MASK) -
       ATA_PIO0];
   break;
  }
 } else {
  switch (mode & ATA_DMA_MASK) {
      case 129:
   sc->udmaconf[target]
       = udma_timing_kauai[mode & ATA_MODE_MASK];
   break;
      case 128:
   sc->udmaconf[target] = 0;
   sc->wdmaconf[target]
       = dma_timing_kauai[mode & ATA_MODE_MASK];
   break;
      default:
   sc->pioconf[target]
       = pio_timing_kauai[(mode & ATA_MODE_MASK)
       - ATA_PIO0];
   break;
  }
 }

 return (mode);
}
