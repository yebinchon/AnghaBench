
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int32_t ;
struct ahci_controller_irq {scalar_t__ mode; int r_irq_rid; struct ahci_controller* ctlr; } ;
struct ahci_controller {int ichannels; int cccv; int quirks; int channels; int remapped_devices; int r_mem; TYPE_1__* interrupt; scalar_t__ ccc; } ;
struct TYPE_2__ {int (* function ) (void*) ;void* argument; } ;


 scalar_t__ AHCI_IRQ_MODE_ALL ;
 int AHCI_IS ;
 int AHCI_Q_EDGEIS ;
 int ATA_INL (int ,int ) ;
 int ATA_OUTL (int ,int ,int) ;
 int ATA_RBL (int ,int ) ;
 int stub1 (void*) ;
 int stub2 (void*) ;

__attribute__((used)) static void
ahci_intr(void *data)
{
 struct ahci_controller_irq *irq = data;
 struct ahci_controller *ctlr = irq->ctlr;
 u_int32_t is, ise = 0;
 void *arg;
 int unit;

 if (irq->mode == AHCI_IRQ_MODE_ALL) {
  unit = 0;
  if (ctlr->ccc)
   is = ctlr->ichannels;
  else
   is = ATA_INL(ctlr->r_mem, AHCI_IS);
 } else {
  unit = irq->r_irq_rid - 1;
  is = ATA_INL(ctlr->r_mem, AHCI_IS);
  is &= (0xffffffff << unit);
 }

 if (ctlr->ccc)
  ise = 1 << ctlr->cccv;

 if (ctlr->quirks & AHCI_Q_EDGEIS)
  ise |= is;
 if (ise != 0)
  ATA_OUTL(ctlr->r_mem, AHCI_IS, ise);
 for (; unit < ctlr->channels; unit++) {
  if ((is & (1 << unit)) != 0 &&
      (arg = ctlr->interrupt[unit].argument)) {
    ctlr->interrupt[unit].function(arg);
  }
 }
 for (; unit < ctlr->channels + ctlr->remapped_devices; unit++) {
  if ((arg = ctlr->interrupt[unit].argument)) {
   ctlr->interrupt[unit].function(arg);
  }
 }


 if (!(ctlr->quirks & AHCI_Q_EDGEIS))
  ATA_OUTL(ctlr->r_mem, AHCI_IS, is);
 ATA_RBL(ctlr->r_mem, AHCI_IS);
}
