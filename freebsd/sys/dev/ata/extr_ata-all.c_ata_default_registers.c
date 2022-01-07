
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ata_channel {TYPE_1__* r_io; } ;
typedef int device_t ;
struct TYPE_2__ {int offset; int res; } ;


 size_t ATA_ALTSTAT ;
 size_t ATA_COMMAND ;
 size_t ATA_CONTROL ;
 size_t ATA_COUNT ;
 size_t ATA_ERROR ;
 size_t ATA_FEATURE ;
 size_t ATA_IREASON ;
 size_t ATA_STATUS ;
 struct ata_channel* device_get_softc (int ) ;

void
ata_default_registers(device_t dev)
{
    struct ata_channel *ch = device_get_softc(dev);


    ch->r_io[ATA_ERROR].res = ch->r_io[ATA_FEATURE].res;
    ch->r_io[ATA_ERROR].offset = ch->r_io[ATA_FEATURE].offset;
    ch->r_io[ATA_IREASON].res = ch->r_io[ATA_COUNT].res;
    ch->r_io[ATA_IREASON].offset = ch->r_io[ATA_COUNT].offset;
    ch->r_io[ATA_STATUS].res = ch->r_io[ATA_COMMAND].res;
    ch->r_io[ATA_STATUS].offset = ch->r_io[ATA_COMMAND].offset;
    ch->r_io[ATA_ALTSTAT].res = ch->r_io[ATA_CONTROL].res;
    ch->r_io[ATA_ALTSTAT].offset = ch->r_io[ATA_CONTROL].offset;
}
