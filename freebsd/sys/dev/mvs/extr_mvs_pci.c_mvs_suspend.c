
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvs_controller {int r_mem; } ;
typedef int device_t ;


 int ATA_OUTL (int ,int ,int) ;
 int CHIP_MIM ;
 int CHIP_PCIIM ;
 int bus_generic_suspend (int ) ;
 struct mvs_controller* device_get_softc (int ) ;

__attribute__((used)) static int
mvs_suspend(device_t dev)
{
 struct mvs_controller *ctlr = device_get_softc(dev);

 bus_generic_suspend(dev);

 ATA_OUTL(ctlr->r_mem, CHIP_MIM, 0x00000000);

 ATA_OUTL(ctlr->r_mem, CHIP_PCIIM, 0x00000000);
 return 0;
}
