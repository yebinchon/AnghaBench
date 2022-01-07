
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int ;
struct trapframe {int dummy; } ;
struct intsrc {scalar_t__ is_pic; int * is_event; } ;
struct atpic {int at_ioaddr; } ;
struct TYPE_2__ {struct intsrc at_intsrc; } ;


 int IRQ_MASK (int) ;
 int KASSERT (int,char*) ;
 size_t NUM_ISA_IRQS ;
 int OCW3_RIS ;
 int OCW3_RR ;
 int OCW3_SEL ;
 TYPE_1__* atintrs ;
 int inb (int) ;
 int intr_execute_handlers (struct intsrc*,struct trapframe*) ;
 int outb (int,int) ;
 int spinlock_enter () ;
 int spinlock_exit () ;

void
atpic_handle_intr(u_int vector, struct trapframe *frame)
{
 struct intsrc *isrc;

 KASSERT(vector < NUM_ISA_IRQS, ("unknown int %u\n", vector));
 isrc = &atintrs[vector].at_intsrc;





 if (isrc->is_event == ((void*)0) && (vector == 7 || vector == 15)) {
  int port, isr;





  port = ((struct atpic *)isrc->is_pic)->at_ioaddr;
  spinlock_enter();
  outb(port, OCW3_SEL | OCW3_RR | OCW3_RIS);
  isr = inb(port);
  outb(port, OCW3_SEL | OCW3_RR);
  spinlock_exit();
  if ((isr & IRQ_MASK(7)) == 0)
   return;
 }
 intr_execute_handlers(isrc, frame);
}
