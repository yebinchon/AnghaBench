
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct agp_apple_softc {scalar_t__ needs_2x_reset; scalar_t__ u3; } ;
typedef int device_t ;


 int UNIN_AGP_GART_2XRESET ;
 int UNIN_AGP_GART_CONTROL ;
 int UNIN_AGP_GART_ENABLE ;
 int UNIN_AGP_GART_INVAL ;
 int UNIN_AGP_U3_GART_PERFRD ;
 struct agp_apple_softc* device_get_softc (int ) ;
 int pci_write_config (int ,int ,int,int) ;

__attribute__((used)) static void
agp_apple_flush_tlb(device_t dev)
{
 struct agp_apple_softc *sc = device_get_softc(dev);
 uint32_t cntrl = UNIN_AGP_GART_ENABLE;

 if (sc->u3)
  cntrl |= UNIN_AGP_U3_GART_PERFRD;

 pci_write_config(dev, UNIN_AGP_GART_CONTROL,
     cntrl | UNIN_AGP_GART_INVAL, 4);
 pci_write_config(dev, UNIN_AGP_GART_CONTROL, cntrl, 4);

 if (sc->needs_2x_reset) {
  pci_write_config(dev, UNIN_AGP_GART_CONTROL,
      cntrl | UNIN_AGP_GART_2XRESET, 4);
  pci_write_config(dev, UNIN_AGP_GART_CONTROL, cntrl, 4);
 }
}
