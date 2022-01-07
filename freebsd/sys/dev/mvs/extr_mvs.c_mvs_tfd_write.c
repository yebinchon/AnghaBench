
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ata_cmd {int command; int lba_high; int lba_high_exp; int lba_mid; int lba_mid_exp; int lba_low; int lba_low_exp; int sector_count; int sector_count_exp; int features; int features_exp; int control; int device; } ;
struct TYPE_2__ {struct ata_cmd cmd; } ;
union ccb {TYPE_1__ ataio; } ;
struct mvs_channel {int r_mem; } ;
typedef int device_t ;


 int ATA_COMMAND ;
 int ATA_CONTROL ;
 int ATA_COUNT ;
 int ATA_CYL_LSB ;
 int ATA_CYL_MSB ;
 int ATA_DRIVE ;
 int ATA_FEATURE ;
 int ATA_OUTB (int ,int ,int ) ;
 int ATA_SECTOR ;
 struct mvs_channel* device_get_softc (int ) ;

__attribute__((used)) static void
mvs_tfd_write(device_t dev, union ccb *ccb)
{
 struct mvs_channel *ch = device_get_softc(dev);
 struct ata_cmd *cmd = &ccb->ataio.cmd;

 ATA_OUTB(ch->r_mem, ATA_DRIVE, cmd->device);
 ATA_OUTB(ch->r_mem, ATA_CONTROL, cmd->control);
 ATA_OUTB(ch->r_mem, ATA_FEATURE, cmd->features_exp);
 ATA_OUTB(ch->r_mem, ATA_FEATURE, cmd->features);
 ATA_OUTB(ch->r_mem, ATA_COUNT, cmd->sector_count_exp);
 ATA_OUTB(ch->r_mem, ATA_COUNT, cmd->sector_count);
 ATA_OUTB(ch->r_mem, ATA_SECTOR, cmd->lba_low_exp);
 ATA_OUTB(ch->r_mem, ATA_SECTOR, cmd->lba_low);
 ATA_OUTB(ch->r_mem, ATA_CYL_LSB, cmd->lba_mid_exp);
 ATA_OUTB(ch->r_mem, ATA_CYL_LSB, cmd->lba_mid);
 ATA_OUTB(ch->r_mem, ATA_CYL_MSB, cmd->lba_high_exp);
 ATA_OUTB(ch->r_mem, ATA_CYL_MSB, cmd->lba_high);
 ATA_OUTB(ch->r_mem, ATA_COMMAND, cmd->command);
}
