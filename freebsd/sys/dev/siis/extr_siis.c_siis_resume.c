
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct siis_controller {int gctl; int r_gmem; } ;
typedef int device_t ;


 int ATA_OUTL (int ,int ,int) ;
 int DELAY (int) ;
 int SIIS_GCTL ;
 int SIIS_GCTL_GRESET ;
 int SIIS_GCTL_I2C_IE ;
 int bus_generic_resume (int ) ;
 struct siis_controller* device_get_softc (int ) ;
 int pci_get_max_read_req (int ) ;
 int pci_set_max_read_req (int ,int) ;

__attribute__((used)) static int
siis_resume(device_t dev)
{
 struct siis_controller *ctlr = device_get_softc(dev);


 if (pci_get_max_read_req(dev) < 1024)
  pci_set_max_read_req(dev, 1024);

 ctlr->gctl |= SIIS_GCTL_GRESET;
 ATA_OUTL(ctlr->r_gmem, SIIS_GCTL, ctlr->gctl);
 DELAY(10000);

 ctlr->gctl &= ~(SIIS_GCTL_GRESET | SIIS_GCTL_I2C_IE);
 ctlr->gctl |= 0x0000000f;
 ATA_OUTL(ctlr->r_gmem, SIIS_GCTL, ctlr->gctl);
 return (bus_generic_resume(dev));
}
