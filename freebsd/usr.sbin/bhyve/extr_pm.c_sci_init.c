
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmctx {int dummy; } ;


 int LEVEL_TRIGGER ;
 int SCI_INT ;
 int pci_irq_use (int ) ;
 int vm_isa_set_irq_trigger (struct vmctx*,int ,int ) ;

void
sci_init(struct vmctx *ctx)
{





 pci_irq_use(SCI_INT);
 vm_isa_set_irq_trigger(ctx, SCI_INT, LEVEL_TRIGGER);
}
