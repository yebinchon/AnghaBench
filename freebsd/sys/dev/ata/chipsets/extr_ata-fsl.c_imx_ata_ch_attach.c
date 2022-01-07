
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ata_pci_controller {int r_res1; } ;
struct ata_channel {int flags; TYPE_1__* r_io; } ;
typedef int device_t ;
struct TYPE_2__ {int offset; int res; } ;


 size_t ATA_ALTSTAT ;
 int ATA_CHECKS_CABLE ;
 size_t ATA_COMMAND ;
 size_t ATA_CONTROL ;
 size_t ATA_COUNT ;
 size_t ATA_CYL_LSB ;
 size_t ATA_CYL_MSB ;
 size_t ATA_DATA ;
 size_t ATA_DRIVE ;
 size_t ATA_ERROR ;
 size_t ATA_FEATURE ;
 int ATA_KNOWN_PRESENCE ;
 int ATA_MAX_RES ;
 int ATA_NO_SLAVE ;
 size_t ATA_SECTOR ;
 size_t ATA_STATUS ;
 int ATA_USE_16BIT ;
 int DELAY (int) ;
 int ata_pci_hw (int ) ;
 int bus_write_1 (int ,int,int) ;
 int bus_write_2 (int ,int,int) ;
 int device_get_parent (int ) ;
 void* device_get_softc (int ) ;

__attribute__((used)) static int
imx_ata_ch_attach(device_t dev)
{
 struct ata_pci_controller *ctrl;
 struct ata_channel *ch;
 int i;

 ctrl = device_get_softc(device_get_parent(dev));
 ch = device_get_softc(dev);
 for (i = ATA_DATA; i < ATA_MAX_RES; i++)
  ch->r_io[i].res = ctrl->r_res1;

 bus_write_2(ctrl->r_res1, 0x24, 0x80);
 DELAY(100);
 bus_write_2(ctrl->r_res1, 0x24, 0xc0);
 DELAY(100);



 bus_write_1(ctrl->r_res1, 0x00, 3);
 bus_write_1(ctrl->r_res1, 0x01, 3);
 bus_write_1(ctrl->r_res1, 0x02, (25 + 15) / 15);
 bus_write_1(ctrl->r_res1, 0x03, (70 + 15) / 15);


 bus_write_1(ctrl->r_res1, 0x04, (70 + 15) / 15);
 bus_write_1(ctrl->r_res1, 0x05, (50 + 15) / 15 + 2);
 bus_write_1(ctrl->r_res1, 0x06, 1);
 bus_write_1(ctrl->r_res1, 0x07, (10 + 15) / 15);


 bus_write_1(ctrl->r_res1, 0x08, (10 + 15) / 15);

 bus_write_2(ctrl->r_res1, 0x24, 0xc1);
 DELAY(30000);


 ch->r_io[ATA_DATA ].offset = 0xa0;
 ch->r_io[ATA_FEATURE].offset = 0xa4;
 ch->r_io[ATA_ERROR ].offset = 0xa4;
 ch->r_io[ATA_COUNT ].offset = 0xa8;
 ch->r_io[ATA_SECTOR ].offset = 0xac;
 ch->r_io[ATA_CYL_LSB].offset = 0xb0;
 ch->r_io[ATA_CYL_MSB].offset = 0xb4;
 ch->r_io[ATA_DRIVE ].offset = 0xb8;
 ch->r_io[ATA_COMMAND].offset = 0xbc;

 ch->r_io[ATA_STATUS ].offset = 0xbc;
 ch->r_io[ATA_ALTSTAT].offset = 0xd8;
 ch->r_io[ATA_CONTROL].offset = 0xd8;

 ata_pci_hw(dev);

 ch->flags |= ATA_NO_SLAVE;
 ch->flags |= ATA_USE_16BIT;
 ch->flags |= ATA_CHECKS_CABLE;
 ch->flags |= ATA_KNOWN_PRESENCE;


 bus_write_2(ctrl->r_res1, 0x28, 0xf8);

 bus_write_2(ctrl->r_res1, 0x2c, 0x88);

 return 0;
}
