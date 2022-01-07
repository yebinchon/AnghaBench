
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_channel {int dummy; } ;
typedef int device_t ;


 int ATA_BMDEVSPEC_0 ;
 int ATA_BMDEVSPEC_1 ;
 int ATA_IDX_INB (struct ata_channel*,int ) ;
 int ATA_IDX_OUTB (struct ata_channel*,int ,int) ;
 int ata_pci_status (int ) ;
 struct ata_channel* device_get_softc (int ) ;

__attribute__((used)) static int
ata_promise_tx2_status(device_t dev)
{
    struct ata_channel *ch = device_get_softc(dev);

    ATA_IDX_OUTB(ch, ATA_BMDEVSPEC_0, 0x0b);
    if (ATA_IDX_INB(ch, ATA_BMDEVSPEC_1) & 0x20) {
 return ata_pci_status(dev);
    }
    return 0;
}
