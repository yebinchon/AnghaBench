
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int u_char ;
struct ata_pci_controller {int r_res2; } ;
struct ata_channel {int dummy; } ;
typedef int device_t ;


 int ATA_INL (int ,int) ;
 int* ATA_INTEL_SMAP (struct ata_pci_controller*,struct ata_channel*) ;



 int EINVAL ;
 int device_get_parent (int ) ;
 void* device_get_softc (int ) ;

__attribute__((used)) static int
ata_intel_sata_ahci_read(device_t dev, int port, int reg, u_int32_t *result)
{
 struct ata_pci_controller *ctlr;
 struct ata_channel *ch;
 device_t parent;
 u_char *smap;
 int offset;

 parent = device_get_parent(dev);
 ctlr = device_get_softc(parent);
 ch = device_get_softc(dev);
 port = (port == 1) ? 1 : 0;
 smap = ATA_INTEL_SMAP(ctlr, ch);
 offset = 0x100 + smap[port] * 0x80;
 switch (reg) {
 case 128:
     reg = 0x28;
     break;
 case 130:
     reg = 0x2c;
     break;
 case 129:
     reg = 0x30;
     break;
 default:
     return (EINVAL);
 }
 *result = ATA_INL(ctlr->r_res2, offset + reg);
 return (0);
}
