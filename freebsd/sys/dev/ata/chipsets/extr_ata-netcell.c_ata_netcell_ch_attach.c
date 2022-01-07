
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_channel {int flags; } ;
typedef int device_t ;


 int ATA_CHECKS_CABLE ;
 int ATA_USE_16BIT ;
 int ENXIO ;
 scalar_t__ ata_pci_ch_attach (int ) ;
 struct ata_channel* device_get_softc (int ) ;

__attribute__((used)) static int
ata_netcell_ch_attach(device_t dev)
{
    struct ata_channel *ch = device_get_softc(dev);


    if (ata_pci_ch_attach(dev))
 return ENXIO;


    ch->flags |= ATA_USE_16BIT;

    ch->flags |= ATA_CHECKS_CABLE;
    return 0;
}
