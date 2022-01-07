
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pic {int dummy; } ;
struct atpic_intsrc {int at_intsrc; } ;
struct atpic {int dummy; } ;


 int ICU_SLAVEID ;
 size_t MASTER ;
 int NUM_ISA_IRQS ;
 struct atpic_intsrc* atintrs ;
 struct atpic* atpics ;
 int * intr_lookup_source (int) ;
 int intr_register_source (int *) ;

__attribute__((used)) static void
atpic_register_sources(struct pic *pic)
{
 struct atpic *ap = (struct atpic *)pic;
 struct atpic_intsrc *ai;
 int i;
 if (ap != &atpics[MASTER])
  return;
 for (i = 0; i < NUM_ISA_IRQS; i++)
  if (intr_lookup_source(i) != ((void*)0))
   return;


 for (i = 0, ai = atintrs; i < NUM_ISA_IRQS; i++, ai++) {
  if (i == ICU_SLAVEID)
   continue;
  intr_register_source(&ai->at_intsrc);
 }
}
