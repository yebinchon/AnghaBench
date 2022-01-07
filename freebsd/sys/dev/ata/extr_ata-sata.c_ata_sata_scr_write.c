
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int (* pm_write ) (int ,int,int,int ) ;} ;
struct ata_channel {TYPE_2__* r_io; int dev; TYPE_1__ hw; } ;
struct TYPE_4__ {scalar_t__ res; } ;


 int ATA_IDX_OUTL (struct ata_channel*,int,int ) ;
 int stub1 (int ,int,int,int ) ;

int
ata_sata_scr_write(struct ata_channel *ch, int port, int reg, uint32_t val)
{

    if (ch->hw.pm_write != ((void*)0))
 return (ch->hw.pm_write(ch->dev, port, reg, val));
    if (ch->r_io[reg].res) {
 ATA_IDX_OUTL(ch, reg, val);
 return (0);
    }
    return (-1);
}
