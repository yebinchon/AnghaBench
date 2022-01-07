
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intsrc {int * is_pic; } ;
struct atpic_intsrc {scalar_t__ at_trigger; } ;
struct atpic {int at_imen; scalar_t__ at_ioaddr; } ;
struct TYPE_2__ {int at_pic; } ;


 scalar_t__ ICU_IMR_OFFSET ;
 int IMEN_MASK (struct atpic_intsrc*) ;
 scalar_t__ INTR_TRIGGER_EDGE ;
 size_t MASTER ;
 int PIC_EOI ;
 int _atpic_eoi_master (struct intsrc*) ;
 int _atpic_eoi_slave (struct intsrc*) ;
 TYPE_1__* atpics ;
 int outb (scalar_t__,int ) ;
 int spinlock_enter () ;
 int spinlock_exit () ;

__attribute__((used)) static void
atpic_disable_source(struct intsrc *isrc, int eoi)
{
 struct atpic_intsrc *ai = (struct atpic_intsrc *)isrc;
 struct atpic *ap = (struct atpic *)isrc->is_pic;

 spinlock_enter();
 if (ai->at_trigger != INTR_TRIGGER_EDGE) {
  ap->at_imen |= IMEN_MASK(ai);
  outb(ap->at_ioaddr + ICU_IMR_OFFSET, ap->at_imen);
 }






 if (eoi == PIC_EOI) {
  if (isrc->is_pic == &atpics[MASTER].at_pic)
   _atpic_eoi_master(isrc);
  else
   _atpic_eoi_slave(isrc);
 }

 spinlock_exit();
}
