
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct agp_i810_softc {int gtt_mappable_entries; int bdev; } ;
typedef int device_t ;


 int AGP_I810_MISCC ;
 int AGP_I810_MISCC_WINSIZE ;
 int AGP_I810_MISCC_WINSIZE_32 ;
 int AGP_PAGE_SHIFT ;
 struct agp_i810_softc* device_get_softc (int ) ;
 int pci_read_config (int ,int ,int) ;

__attribute__((used)) static int
agp_i810_get_gtt_mappable_entries(device_t dev)
{
 struct agp_i810_softc *sc;
 uint32_t ap;
 uint16_t miscc;

 sc = device_get_softc(dev);
 miscc = pci_read_config(sc->bdev, AGP_I810_MISCC, 2);
 if ((miscc & AGP_I810_MISCC_WINSIZE) == AGP_I810_MISCC_WINSIZE_32)
  ap = 32;
 else
  ap = 64;
 sc->gtt_mappable_entries = (ap * 1024 * 1024) >> AGP_PAGE_SHIFT;
 return (0);
}
