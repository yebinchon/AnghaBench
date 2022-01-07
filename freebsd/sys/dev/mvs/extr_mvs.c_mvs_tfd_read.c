
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ata_res {void* lba_high; void* lba_mid; void* lba_low; void* sector_count; void* lba_high_exp; void* lba_mid_exp; void* lba_low_exp; void* sector_count_exp; void* device; void* error; void* status; } ;
struct TYPE_2__ {struct ata_res res; } ;
union ccb {TYPE_1__ ataio; } ;
struct mvs_channel {int r_mem; } ;
typedef int device_t ;


 int ATA_ALTSTAT ;
 int ATA_A_HOB ;
 int ATA_CONTROL ;
 int ATA_COUNT ;
 int ATA_CYL_LSB ;
 int ATA_CYL_MSB ;
 int ATA_DRIVE ;
 int ATA_ERROR ;
 void* ATA_INB (int ,int ) ;
 int ATA_OUTB (int ,int ,int ) ;
 int ATA_SECTOR ;
 struct mvs_channel* device_get_softc (int ) ;

__attribute__((used)) static void
mvs_tfd_read(device_t dev, union ccb *ccb)
{
 struct mvs_channel *ch = device_get_softc(dev);
 struct ata_res *res = &ccb->ataio.res;

 res->status = ATA_INB(ch->r_mem, ATA_ALTSTAT);
 res->error = ATA_INB(ch->r_mem, ATA_ERROR);
 res->device = ATA_INB(ch->r_mem, ATA_DRIVE);
 ATA_OUTB(ch->r_mem, ATA_CONTROL, ATA_A_HOB);
 res->sector_count_exp = ATA_INB(ch->r_mem, ATA_COUNT);
 res->lba_low_exp = ATA_INB(ch->r_mem, ATA_SECTOR);
 res->lba_mid_exp = ATA_INB(ch->r_mem, ATA_CYL_LSB);
 res->lba_high_exp = ATA_INB(ch->r_mem, ATA_CYL_MSB);
 ATA_OUTB(ch->r_mem, ATA_CONTROL, 0);
 res->sector_count = ATA_INB(ch->r_mem, ATA_COUNT);
 res->lba_low = ATA_INB(ch->r_mem, ATA_SECTOR);
 res->lba_mid = ATA_INB(ch->r_mem, ATA_CYL_LSB);
 res->lba_high = ATA_INB(ch->r_mem, ATA_CYL_MSB);
}
