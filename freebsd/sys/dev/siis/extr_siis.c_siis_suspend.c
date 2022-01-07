
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct siis_controller {int gctl; int r_gmem; } ;
typedef int device_t ;


 int ATA_OUTL (int ,int ,int ) ;
 int SIIS_GCTL ;
 int SIIS_GCTL_GRESET ;
 int bus_generic_suspend (int ) ;
 struct siis_controller* device_get_softc (int ) ;

__attribute__((used)) static int
siis_suspend(device_t dev)
{
 struct siis_controller *ctlr = device_get_softc(dev);

 bus_generic_suspend(dev);

 ctlr->gctl |= SIIS_GCTL_GRESET;
 ATA_OUTL(ctlr->r_gmem, SIIS_GCTL, ctlr->gctl);
 return 0;
}
