
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int32_t ;
struct agp_intel_softc {TYPE_1__* gatt; } ;
typedef int device_t ;
struct TYPE_2__ {int ag_physical; } ;


 int AGP_INTEL_AGPCTRL ;
 int AGP_INTEL_ATTBASE ;
 int AGP_INTEL_ERRSTS ;
 int AGP_INTEL_I820_RDCR ;
 int AGP_INTEL_I845_AGPM ;
 int AGP_INTEL_I8XX_ERRSTS ;
 int AGP_INTEL_MCHCFG ;
 int AGP_INTEL_NBXCFG ;
 struct agp_intel_softc* device_get_softc (int ) ;
 int pci_get_devid (int ) ;
 int pci_read_config (int ,int ,int) ;
 int pci_write_config (int ,int ,int,int) ;

__attribute__((used)) static void
agp_intel_commit_gatt(device_t dev)
{
 struct agp_intel_softc *sc;
 u_int32_t type;
 u_int32_t value;

 sc = device_get_softc(dev);
 type = pci_get_devid(dev);


 pci_write_config(dev, AGP_INTEL_ATTBASE, sc->gatt->ag_physical, 4);


 switch (type) {
 case 0x71908086:
  pci_write_config(dev, AGP_INTEL_AGPCTRL, 0x2080, 4);
  break;
 case 0x71808086:




  pci_write_config(dev, AGP_INTEL_AGPCTRL, 0x2280, 4);
  break;
 default:
  value = pci_read_config(dev, AGP_INTEL_AGPCTRL, 4);
  pci_write_config(dev, AGP_INTEL_AGPCTRL, value | 0x80, 4);
 }


 switch (type) {
 case 0x25008086:
 case 0x25018086:
  pci_write_config(dev, AGP_INTEL_I820_RDCR,
     (pci_read_config(dev, AGP_INTEL_I820_RDCR, 1)
      | (1 << 1)), 1);
  break;
 case 0x1a308086:
 case 0x25608086:
 case 0x33408086:
 case 0x35808086:
 case 0x25708086:
 case 0x25788086:
  pci_write_config(dev, AGP_INTEL_I845_AGPM,
     (pci_read_config(dev, AGP_INTEL_I845_AGPM, 1)
      | (1 << 1)), 1);
  break;
 case 0x1a218086:
 case 0x25308086:
 case 0x25318086:
 case 0x255d8086:
 case 0x25508086:
  pci_write_config(dev, AGP_INTEL_MCHCFG,
     (pci_read_config(dev, AGP_INTEL_MCHCFG, 2)
      | (1 << 9)), 2);
  break;
 default:
  pci_write_config(dev, AGP_INTEL_NBXCFG,
     (pci_read_config(dev, AGP_INTEL_NBXCFG, 4)
      & ~(1 << 10)) | (1 << 9), 4);
 }


 switch (type) {
 case 0x1a218086:
  pci_write_config(dev, AGP_INTEL_I8XX_ERRSTS, 0xc000, 2);
  break;
 case 0x25008086:
 case 0x25018086:
 case 0x1a308086:
 case 0x25608086:
 case 0x25308086:
 case 0x33408086:
 case 0x25318086:
 case 0x25708086:
 case 0x25788086:
 case 0x255d8086:
 case 0x25508086:
  pci_write_config(dev, AGP_INTEL_I8XX_ERRSTS, 0x00ff, 2);
  break;
 default:
  pci_write_config(dev, AGP_INTEL_ERRSTS + 1, 7, 1);
 }
}
