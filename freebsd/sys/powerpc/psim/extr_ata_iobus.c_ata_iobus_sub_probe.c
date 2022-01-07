
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_channel {int flags; scalar_t__ unit; } ;
typedef int device_t ;


 int ATA_NO_SLAVE ;
 int ATA_USE_16BIT ;
 int ata_generic_hw (int ) ;
 int ata_probe (int ) ;
 struct ata_channel* device_get_softc (int ) ;

__attribute__((used)) static int
ata_iobus_sub_probe(device_t dev)
{
 struct ata_channel *ch = device_get_softc(dev);


 ch->unit = 0;
 ch->flags = (ATA_USE_16BIT|ATA_NO_SLAVE);
 ata_generic_hw(dev);

 return ata_probe(dev);
}
