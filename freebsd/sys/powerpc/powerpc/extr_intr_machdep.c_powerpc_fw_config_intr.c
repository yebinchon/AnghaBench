
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct powerpc_intr {int fwcode; int pol; int trig; int intline; int * pic; } ;


 int ENOMEM ;
 int INTR_POLARITY_CONFORM ;
 int INTR_TRIGGER_INVALID ;
 int PIC_CONFIG (int *,int ,int ,int ) ;
 int PIC_TRANSLATE_CODE (int *,int ,int,int *,int *) ;
 int cold ;
 struct powerpc_intr* intr_lookup (int) ;

int
powerpc_fw_config_intr(int irq, int sense_code)
{
 struct powerpc_intr *i;

 i = intr_lookup(irq);
 if (i == ((void*)0))
  return (ENOMEM);

 i->trig = INTR_TRIGGER_INVALID;
 i->pol = INTR_POLARITY_CONFORM;
 i->fwcode = sense_code;

 if (!cold && i->pic != ((void*)0)) {
  PIC_TRANSLATE_CODE(i->pic, i->intline, i->fwcode, &i->trig,
      &i->pol);
  PIC_CONFIG(i->pic, i->intline, i->trig, i->pol);
 }

 return (0);
}
