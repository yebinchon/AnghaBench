
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int64_t ;
struct TYPE_3__ {int count; int lba; } ;
struct TYPE_4__ {TYPE_1__ ata; } ;
struct ata_request {int flags; TYPE_2__ u; int parent; } ;
struct ata_channel {int dummy; } ;


 int ATA_A_4BIT ;
 int ATA_A_HOB ;
 int ATA_CONTROL ;
 int ATA_COUNT ;
 int ATA_CYL_LSB ;
 int ATA_CYL_MSB ;
 int ATA_DRIVE ;
 int ATA_IDX_INB (struct ata_channel*,int ) ;
 int ATA_IDX_OUTB (struct ata_channel*,int ,int) ;
 int ATA_R_48BIT ;
 int ATA_SECTOR ;
 struct ata_channel* device_get_softc (int ) ;

__attribute__((used)) static void
ata_tf_read(struct ata_request *request)
{
    struct ata_channel *ch = device_get_softc(request->parent);

    if (request->flags & ATA_R_48BIT) {
 ATA_IDX_OUTB(ch, ATA_CONTROL, ATA_A_4BIT | ATA_A_HOB);
 request->u.ata.count = (ATA_IDX_INB(ch, ATA_COUNT) << 8);
 request->u.ata.lba =
     ((u_int64_t)(ATA_IDX_INB(ch, ATA_SECTOR)) << 24) |
     ((u_int64_t)(ATA_IDX_INB(ch, ATA_CYL_LSB)) << 32) |
     ((u_int64_t)(ATA_IDX_INB(ch, ATA_CYL_MSB)) << 40);

 ATA_IDX_OUTB(ch, ATA_CONTROL, ATA_A_4BIT);
 request->u.ata.count |= ATA_IDX_INB(ch, ATA_COUNT);
 request->u.ata.lba |=
     (ATA_IDX_INB(ch, ATA_SECTOR) |
      (ATA_IDX_INB(ch, ATA_CYL_LSB) << 8) |
      (ATA_IDX_INB(ch, ATA_CYL_MSB) << 16));
    }
    else {
 request->u.ata.count = ATA_IDX_INB(ch, ATA_COUNT);
 request->u.ata.lba = ATA_IDX_INB(ch, ATA_SECTOR) |
        (ATA_IDX_INB(ch, ATA_CYL_LSB) << 8) |
        (ATA_IDX_INB(ch, ATA_CYL_MSB) << 16) |
        ((ATA_IDX_INB(ch, ATA_DRIVE) & 0xf) << 24);
    }
}
