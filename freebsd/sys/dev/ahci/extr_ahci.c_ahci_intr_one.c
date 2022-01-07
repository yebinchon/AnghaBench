
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ahci_controller_irq {int r_irq_rid; struct ahci_controller* ctlr; } ;
struct ahci_controller {int r_mem; TYPE_1__* interrupt; } ;
struct TYPE_2__ {int (* function ) (void*) ;void* argument; } ;


 int AHCI_IS ;
 int ATA_OUTL (int ,int ,int) ;
 int ATA_RBL (int ,int ) ;
 int stub1 (void*) ;

__attribute__((used)) static void
ahci_intr_one(void *data)
{
 struct ahci_controller_irq *irq = data;
 struct ahci_controller *ctlr = irq->ctlr;
 void *arg;
 int unit;

 unit = irq->r_irq_rid - 1;
 if ((arg = ctlr->interrupt[unit].argument))
     ctlr->interrupt[unit].function(arg);

 ATA_OUTL(ctlr->r_mem, AHCI_IS, 1 << unit);
 ATA_RBL(ctlr->r_mem, AHCI_IS);
}
