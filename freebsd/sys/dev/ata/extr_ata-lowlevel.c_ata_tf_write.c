
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int feature; int count; int lba; } ;
struct TYPE_4__ {TYPE_1__ ata; } ;
struct ata_request {int flags; TYPE_2__ u; int unit; int parent; } ;
struct ata_channel {int dummy; } ;


 int ATA_COUNT ;
 int ATA_CYL_LSB ;
 int ATA_CYL_MSB ;
 int ATA_DEV (int ) ;
 int ATA_DRIVE ;
 int ATA_D_IBM ;
 int ATA_D_LBA ;
 int ATA_FEATURE ;
 int ATA_IDX_OUTB (struct ata_channel*,int ,int) ;
 int ATA_R_48BIT ;
 int ATA_SECTOR ;
 struct ata_channel* device_get_softc (int ) ;

__attribute__((used)) static void
ata_tf_write(struct ata_request *request)
{
    struct ata_channel *ch = device_get_softc(request->parent);

    if (request->flags & ATA_R_48BIT) {
 ATA_IDX_OUTB(ch, ATA_FEATURE, request->u.ata.feature >> 8);
 ATA_IDX_OUTB(ch, ATA_FEATURE, request->u.ata.feature);
 ATA_IDX_OUTB(ch, ATA_COUNT, request->u.ata.count >> 8);
 ATA_IDX_OUTB(ch, ATA_COUNT, request->u.ata.count);
 ATA_IDX_OUTB(ch, ATA_SECTOR, request->u.ata.lba >> 24);
 ATA_IDX_OUTB(ch, ATA_SECTOR, request->u.ata.lba);
 ATA_IDX_OUTB(ch, ATA_CYL_LSB, request->u.ata.lba >> 32);
 ATA_IDX_OUTB(ch, ATA_CYL_LSB, request->u.ata.lba >> 8);
 ATA_IDX_OUTB(ch, ATA_CYL_MSB, request->u.ata.lba >> 40);
 ATA_IDX_OUTB(ch, ATA_CYL_MSB, request->u.ata.lba >> 16);
 ATA_IDX_OUTB(ch, ATA_DRIVE, ATA_D_LBA | ATA_DEV(request->unit));
    }
    else {
 ATA_IDX_OUTB(ch, ATA_FEATURE, request->u.ata.feature);
 ATA_IDX_OUTB(ch, ATA_COUNT, request->u.ata.count);
     ATA_IDX_OUTB(ch, ATA_SECTOR, request->u.ata.lba);
     ATA_IDX_OUTB(ch, ATA_CYL_LSB, request->u.ata.lba >> 8);
     ATA_IDX_OUTB(ch, ATA_CYL_MSB, request->u.ata.lba >> 16);
     ATA_IDX_OUTB(ch, ATA_DRIVE,
    ATA_D_IBM | ATA_D_LBA | ATA_DEV(request->unit) |
    ((request->u.ata.lba >> 24) & 0x0f));
    }
}
