
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_pci_controller {int r_res2; } ;
struct ata_channel {int unit; } ;
typedef int device_t ;


 int ATA_IDX_INL (struct ata_channel*,int ) ;
 int ATA_INL (int ,int) ;
 int ATA_STATUS ;
 int ata_pci_status (int ) ;
 int device_get_parent (int ) ;
 void* device_get_softc (int ) ;

__attribute__((used)) static int
ata_serverworks_status(device_t dev)
{
    struct ata_channel *ch = device_get_softc(dev);
    struct ata_pci_controller *ctlr = device_get_softc(device_get_parent(dev));




    if (!(ATA_INL(ctlr->r_res2, 0x1f80) & (1 << ch->unit)))
 return (0);






    ATA_IDX_INL(ch,ATA_STATUS);

    return ata_pci_status(dev);
}
