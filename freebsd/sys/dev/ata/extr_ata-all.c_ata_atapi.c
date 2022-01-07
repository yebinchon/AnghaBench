
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_channel {int devices; } ;
typedef int device_t ;


 int ATA_ATAPI_MASTER ;
 struct ata_channel* device_get_softc (int ) ;

int
ata_atapi(device_t dev, int target)
{
    struct ata_channel *ch = device_get_softc(dev);

    return (ch->devices & (ATA_ATAPI_MASTER << target));
}
