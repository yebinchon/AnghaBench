
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct powerpc_intr {int priv; int intline; int * pic; } ;


 int PIC_MASK (int *,int ,int ) ;
 struct powerpc_intr* intr_lookup (int ) ;

void
powerpc_intr_mask(u_int irq)
{
 struct powerpc_intr *i;

 i = intr_lookup(irq);
 if (i == ((void*)0) || i->pic == ((void*)0))
  return;

 PIC_MASK(i->pic, i->intline, i->priv);
}
