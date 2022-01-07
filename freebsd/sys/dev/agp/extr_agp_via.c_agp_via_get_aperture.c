
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct agp_via_softc {int * regs; } ;
typedef int device_t ;


 size_t REG_APSIZE ;
 struct agp_via_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,int) ;
 int pci_read_config (int ,int ,int) ;
 int * via_v2_regs ;

__attribute__((used)) static u_int32_t
agp_via_get_aperture(device_t dev)
{
 struct agp_via_softc *sc = device_get_softc(dev);
 u_int32_t apsize;

 if (sc->regs == via_v2_regs) {
  apsize = pci_read_config(dev, sc->regs[REG_APSIZE], 1);
  return (((apsize ^ 0xff) << 20) | ((1 << 20) - 1)) + 1;
 } else {
  apsize = pci_read_config(dev, sc->regs[REG_APSIZE], 2) & 0xfff;
  switch (apsize) {
  case 0x800:
   return 0x80000000;
  case 0xc00:
   return 0x40000000;
  case 0xe00:
   return 0x20000000;
  case 0xf00:
   return 0x10000000;
  case 0xf20:
   return 0x08000000;
  case 0xf30:
   return 0x04000000;
  case 0xf38:
   return 0x02000000;
  case 0xf3c:
   return 0x01000000;
  case 0xf3e:
   return 0x00800000;
  case 0xf3f:
   return 0x00400000;
  default:
   device_printf(dev, "Invalid aperture setting 0x%x\n",
       pci_read_config(dev, sc->regs[REG_APSIZE], 2));
   return 0;
  }
 }
}
