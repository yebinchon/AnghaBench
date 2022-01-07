
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct agp_via_softc {int * regs; } ;
typedef int device_t ;


 size_t REG_GARTCTRL ;
 struct agp_via_softc* device_get_softc (int ) ;
 int pci_read_config (int ,int ,int) ;
 int pci_write_config (int ,int ,int,int) ;
 int * via_v2_regs ;

__attribute__((used)) static void
agp_via_flush_tlb(device_t dev)
{
 struct agp_via_softc *sc = device_get_softc(dev);
 u_int32_t gartctrl;

 if (sc->regs == via_v2_regs) {
  pci_write_config(dev, sc->regs[REG_GARTCTRL], 0x8f, 4);
  pci_write_config(dev, sc->regs[REG_GARTCTRL], 0x0f, 4);
 } else {
  gartctrl = pci_read_config(dev, sc->regs[REG_GARTCTRL], 4);
  pci_write_config(dev, sc->regs[REG_GARTCTRL], gartctrl &
      ~(1 << 7), 4);
  pci_write_config(dev, sc->regs[REG_GARTCTRL], gartctrl, 4);
 }

}
