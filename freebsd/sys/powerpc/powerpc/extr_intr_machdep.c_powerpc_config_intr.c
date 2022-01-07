
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct powerpc_intr {int trig; int pol; int intline; int * pic; } ;
typedef enum intr_trigger { ____Placeholder_intr_trigger } intr_trigger ;
typedef enum intr_polarity { ____Placeholder_intr_polarity } intr_polarity ;


 int ENOMEM ;
 int PIC_CONFIG (int *,int ,int,int) ;
 int cold ;
 struct powerpc_intr* intr_lookup (int) ;

int
powerpc_config_intr(int irq, enum intr_trigger trig, enum intr_polarity pol)
{
 struct powerpc_intr *i;

 i = intr_lookup(irq);
 if (i == ((void*)0))
  return (ENOMEM);

 i->trig = trig;
 i->pol = pol;

 if (!cold && i->pic != ((void*)0))
  PIC_CONFIG(i->pic, i->intline, trig, pol);

 return (0);
}
