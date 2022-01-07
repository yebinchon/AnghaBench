
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int32_t ;
struct TYPE_2__ {int (* softreset ) (int ,int) ;scalar_t__ (* pm_read ) (int ,int ,int,int*) ;} ;
struct ata_channel {int devices; TYPE_1__ hw; } ;
typedef int device_t ;


 int ATA_ATAPI_MASTER ;
 int ATA_ATA_MASTER ;
 int ATA_PM ;
 int DELAY (int) ;
 int ata_sata_phy_reset (int ,int,int) ;
 scalar_t__ bootverbose ;
 struct ata_channel* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 scalar_t__ stub1 (int ,int ,int,int*) ;
 scalar_t__ stub2 (int ,int ,int,int*) ;
 scalar_t__ stub3 (int ,int ,int,int*) ;
 int stub4 (int ,int) ;

void
ata_pm_identify(device_t dev)
{
    struct ata_channel *ch = device_get_softc(dev);
    u_int32_t pm_chipid, pm_revision, pm_ports;
    int port;


    if (ch->hw.pm_read(dev, ATA_PM, 0, &pm_chipid)) {
 device_printf(dev, "error getting PM vendor data\n");
 return;
    }


    if (ch->hw.pm_read(dev, ATA_PM, 1, &pm_revision)) {
 device_printf(dev, "error getting PM revision data\n");
 return;
    }


    if (ch->hw.pm_read(dev, ATA_PM, 2, &pm_ports)) {
 device_printf(dev, "error getting PM port info\n");
 return;
    }
    pm_ports &= 0x0000000f;


    switch (pm_chipid) {
    case 0x37261095:



 device_printf(dev, "SiI 3726 (rev=%x) Port Multiplier with %d (5) ports\n",
        pm_revision, pm_ports);
 pm_ports = 5;
 break;

    case 0x47261095:





 device_printf(dev, "SiI 4726 (rev=%x) Port Multiplier with %d (5) ports\n",
        pm_revision, pm_ports);
 pm_ports = 5;
 break;

    default:
 device_printf(dev, "Port Multiplier (id=%08x rev=%x) with %d ports\n",
        pm_chipid, pm_revision, pm_ports);
    }


    for (port=0; port < pm_ports; port++) {
 u_int32_t signature;

 if (!ata_sata_phy_reset(dev, port, 1))
     continue;






 DELAY(1000000);

 signature = ch->hw.softreset(dev, port);

 if (bootverbose)
     device_printf(dev, "p%d: SIGNATURE=%08x\n", port, signature);


 switch (signature >> 16) {
 case 0x0000:
     ch->devices |= (ATA_ATA_MASTER << port);
     continue;
 case 0xeb14:
     ch->devices |= (ATA_ATAPI_MASTER << port);
     continue;
 }
    }
}
