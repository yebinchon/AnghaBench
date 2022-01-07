
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmctx {int dummy; } ;


 int SCI_INT ;
 scalar_t__ sci_active ;
 int vm_isa_deassert_irq (struct vmctx*,int ,int ) ;

__attribute__((used)) static void
sci_deassert(struct vmctx *ctx)
{

 if (!sci_active)
  return;
 vm_isa_deassert_irq(ctx, SCI_INT, SCI_INT);
 sci_active = 0;
}
