
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct powerpc_intr {int priv; int intline; int pic; } ;


 int PIC_EOI (int ,int ,int ) ;

__attribute__((used)) static void
powerpc_intr_eoi(void *arg)
{
 struct powerpc_intr *i = arg;

 PIC_EOI(i->pic, i->intline, i->priv);
}
