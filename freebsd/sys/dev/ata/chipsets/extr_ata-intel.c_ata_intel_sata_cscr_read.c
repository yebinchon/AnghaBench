
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int u_char ;
struct ata_pci_controller {int dummy; } ;
struct ata_channel {int dummy; } ;
typedef int device_t ;


 int ATA_INTEL_LOCK (struct ata_pci_controller*) ;
 int* ATA_INTEL_SMAP (struct ata_pci_controller*,struct ata_channel*) ;
 int ATA_INTEL_UNLOCK (struct ata_pci_controller*) ;



 int EINVAL ;
 int device_get_parent (int ) ;
 void* device_get_softc (int ) ;
 int pci_read_config (int ,int,int) ;
 int pci_write_config (int ,int,int,int) ;

__attribute__((used)) static int
ata_intel_sata_cscr_read(device_t dev, int port, int reg, u_int32_t *result)
{
 struct ata_pci_controller *ctlr;
 struct ata_channel *ch;
 device_t parent;
 u_char *smap;

 parent = device_get_parent(dev);
 ctlr = device_get_softc(parent);
 ch = device_get_softc(dev);
 smap = ATA_INTEL_SMAP(ctlr, ch);
 port = (port == 1) ? 1 : 0;
 switch (reg) {
 case 128:
     reg = 0;
     break;
 case 129:
     reg = 1;
     break;
 case 130:
     reg = 2;
     break;
 default:
     return (EINVAL);
 }
 ATA_INTEL_LOCK(ctlr);
 pci_write_config(parent, 0xa0,
     0x50 + smap[port] * 0x10 + reg * 4, 4);
 *result = pci_read_config(parent, 0xa4, 4);
 ATA_INTEL_UNLOCK(ctlr);
 return (0);
}
