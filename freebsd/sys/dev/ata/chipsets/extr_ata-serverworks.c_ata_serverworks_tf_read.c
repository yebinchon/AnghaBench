
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int64_t ;
typedef int u_int16_t ;
struct TYPE_3__ {int count; int lba; } ;
struct TYPE_4__ {TYPE_1__ ata; } ;
struct ata_request {int flags; TYPE_2__ u; int parent; } ;
struct ata_channel {int dummy; } ;


 int ATA_COUNT ;
 int ATA_CYL_LSB ;
 int ATA_CYL_MSB ;
 int ATA_DRIVE ;
 int ATA_IDX_INW (struct ata_channel*,int ) ;
 int ATA_R_48BIT ;
 int ATA_SECTOR ;
 struct ata_channel* device_get_softc (int ) ;

__attribute__((used)) static void
ata_serverworks_tf_read(struct ata_request *request)
{
    struct ata_channel *ch = device_get_softc(request->parent);

    if (request->flags & ATA_R_48BIT) {
 u_int16_t temp;

 request->u.ata.count = ATA_IDX_INW(ch, ATA_COUNT);
 temp = ATA_IDX_INW(ch, ATA_SECTOR);
 request->u.ata.lba = (u_int64_t)(temp & 0x00ff) |
        ((u_int64_t)(temp & 0xff00) << 24);
 temp = ATA_IDX_INW(ch, ATA_CYL_LSB);
 request->u.ata.lba |= ((u_int64_t)(temp & 0x00ff) << 8) |
         ((u_int64_t)(temp & 0xff00) << 32);
 temp = ATA_IDX_INW(ch, ATA_CYL_MSB);
 request->u.ata.lba |= ((u_int64_t)(temp & 0x00ff) << 16) |
         ((u_int64_t)(temp & 0xff00) << 40);
    }
    else {
 request->u.ata.count = ATA_IDX_INW(ch, ATA_COUNT) & 0x00ff;
 request->u.ata.lba = (ATA_IDX_INW(ch, ATA_SECTOR) & 0x00ff) |
        ((ATA_IDX_INW(ch, ATA_CYL_LSB) & 0x00ff) << 8) |
        ((ATA_IDX_INW(ch, ATA_CYL_MSB) & 0x00ff) << 16) |
        ((ATA_IDX_INW(ch, ATA_DRIVE) & 0xf) << 24);
    }
}
