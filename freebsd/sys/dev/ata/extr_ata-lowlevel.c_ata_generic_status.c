
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_channel {int dummy; } ;
typedef int device_t ;


 int ATA_ALTSTAT ;
 int ATA_IDX_INB (struct ata_channel*,int ) ;
 int ATA_S_BUSY ;
 int DELAY (int) ;
 struct ata_channel* device_get_softc (int ) ;

__attribute__((used)) static int
ata_generic_status(device_t dev)
{
    struct ata_channel *ch = device_get_softc(dev);

    if (ATA_IDX_INB(ch, ATA_ALTSTAT) & ATA_S_BUSY) {
 DELAY(100);
 if (ATA_IDX_INB(ch, ATA_ALTSTAT) & ATA_S_BUSY)
     return 0;
    }
    return 1;
}
