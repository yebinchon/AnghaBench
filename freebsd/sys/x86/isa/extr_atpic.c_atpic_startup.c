
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intsrc {int dummy; } ;
struct TYPE_2__ {scalar_t__ is_pic; int * is_straycount; int * is_count; } ;
struct atpic_intsrc {int at_trigger; int at_intr; int at_intr_pti; scalar_t__ at_irq; TYPE_1__ at_intsrc; int at_straycount; int at_count; } ;
struct atpic {scalar_t__ at_intbase; } ;


 int GSEL_ATPIC ;
 size_t ICU_SLAVEID ;
 int INTR_TRIGGER_EDGE ;
 int INTR_TRIGGER_LEVEL ;
 size_t MASTER ;
 int NUM_ISA_IRQS ;
 int SDT_ATPIC ;
 int SEL_KPL ;
 size_t SLAVE ;
 struct atpic_intsrc* atintrs ;
 int atpic_enable_source (struct intsrc*) ;
 int * atpics ;
 scalar_t__ elcr_found ;
 int elcr_read_trigger (int) ;
 int i8259_init (int *,int) ;
 scalar_t__ pti ;
 int setidt (scalar_t__,int ,int ,int ,int ) ;

void
atpic_startup(void)
{
 struct atpic_intsrc *ai;
 int i;


 i8259_init(&atpics[MASTER], 0);
 i8259_init(&atpics[SLAVE], 1);
 atpic_enable_source((struct intsrc *)&atintrs[ICU_SLAVEID]);


 for (i = 0, ai = atintrs; i < NUM_ISA_IRQS; i++, ai++) {
  if (i == ICU_SLAVEID)
   continue;
  ai->at_intsrc.is_count = &ai->at_count;
  ai->at_intsrc.is_straycount = &ai->at_straycount;
  setidt(((struct atpic *)ai->at_intsrc.is_pic)->at_intbase +
      ai->at_irq, pti ? ai->at_intr_pti : ai->at_intr, SDT_ATPIC,
      SEL_KPL, GSEL_ATPIC);
 }
 if (elcr_found) {
  for (i = 0, ai = atintrs; i < NUM_ISA_IRQS; i++, ai++)
   ai->at_trigger = elcr_read_trigger(i);
 } else {
  for (i = 0, ai = atintrs; i < NUM_ISA_IRQS; i++, ai++)
   switch (i) {
   case 0:
   case 1:
   case 2:
   case 8:
   case 13:
    ai->at_trigger = INTR_TRIGGER_EDGE;
    break;
   default:
    ai->at_trigger = INTR_TRIGGER_LEVEL;
    break;
   }
 }
}
