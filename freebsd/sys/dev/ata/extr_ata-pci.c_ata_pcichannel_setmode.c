
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_pci_controller {int (* setmode ) (int ,int,int) ;} ;
typedef int device_t ;


 int ata_generic_setmode (int ,int,int) ;
 int device_get_parent (int ) ;
 struct ata_pci_controller* device_get_softc (int ) ;
 int stub1 (int ,int,int) ;

__attribute__((used)) static int
ata_pcichannel_setmode(device_t dev, int target, int mode)
{
 struct ata_pci_controller *ctlr = device_get_softc(device_get_parent(dev));

 if (ctlr->setmode)
  return (ctlr->setmode(dev, target, mode));
 else
  return (ata_generic_setmode(dev, target, mode));
}
