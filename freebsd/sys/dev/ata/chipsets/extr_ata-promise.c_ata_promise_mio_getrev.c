
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ata_pci_controller {TYPE_1__* chip; } ;
struct ata_channel {int unit; } ;
typedef int device_t ;
struct TYPE_2__ {scalar_t__ cfg2; } ;


 scalar_t__ PR_CMBO ;
 scalar_t__ PR_CMBO2 ;
 scalar_t__ PR_SATA ;
 scalar_t__ PR_SATA2 ;
 int ata_sata_getrev (int ,int) ;
 int device_get_parent (int ) ;
 void* device_get_softc (int ) ;

__attribute__((used)) static int
ata_promise_mio_getrev(device_t dev, int target)
{
        struct ata_pci_controller *ctlr = device_get_softc(device_get_parent(dev));
        struct ata_channel *ch = device_get_softc(dev);

        if ( (ctlr->chip->cfg2 == PR_SATA) ||
         ((ctlr->chip->cfg2 == PR_CMBO) && (ch->unit < 2)) ||
      (ctlr->chip->cfg2 == PR_SATA2) ||
     ((ctlr->chip->cfg2 == PR_CMBO2) && (ch->unit < 2)))
  return (ata_sata_getrev(dev, target));
 else
  return (0);
}
