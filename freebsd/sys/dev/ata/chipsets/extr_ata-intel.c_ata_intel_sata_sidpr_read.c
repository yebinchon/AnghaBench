
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct ata_pci_controller {int dummy; } ;
struct ata_channel {int unit; } ;
typedef int device_t ;


 int ATA_IDX_ADDR ;
 int ATA_IDX_DATA ;
 int ATA_IDX_INL (struct ata_channel*,int ) ;
 int ATA_IDX_OUTL (struct ata_channel*,int ,int) ;
 int ATA_INTEL_LOCK (struct ata_pci_controller*) ;
 int ATA_INTEL_UNLOCK (struct ata_pci_controller*) ;



 int EINVAL ;
 int device_get_parent (int ) ;
 void* device_get_softc (int ) ;

__attribute__((used)) static int
ata_intel_sata_sidpr_read(device_t dev, int port, int reg, u_int32_t *result)
{
 struct ata_pci_controller *ctlr;
 struct ata_channel *ch;
 device_t parent;

 parent = device_get_parent(dev);
 ctlr = device_get_softc(parent);
 ch = device_get_softc(dev);
 port = (port == 1) ? 1 : 0;
 switch (reg) {
 case 128:
     reg = 0;
     break;
 case 130:
     reg = 1;
     break;
 case 129:
     reg = 2;
     break;
 default:
     return (EINVAL);
 }
 ATA_INTEL_LOCK(ctlr);
 ATA_IDX_OUTL(ch, ATA_IDX_ADDR, ((ch->unit * 2 + port) << 8) + reg);
 *result = ATA_IDX_INL(ch, ATA_IDX_DATA);
 ATA_INTEL_UNLOCK(ctlr);
 return (0);
}
