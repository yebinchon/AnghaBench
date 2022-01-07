
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atpic {int at_ioaddr; int at_intbase; int at_imen; } ;


 int ICU_IMR_OFFSET ;
 int ICU_SLAVEID ;
 int ICW1_IC4 ;
 int ICW1_RESET ;
 int IRQ_MASK (int) ;
 int MASTER_MODE ;
 int OCW2_L1 ;
 int OCW2_R ;
 int OCW2_SL ;
 int OCW3_RR ;
 int OCW3_SEL ;
 int SLAVE_MODE ;
 int outb (int,int) ;
 int spinlock_enter () ;
 int spinlock_exit () ;

__attribute__((used)) static void
i8259_init(struct atpic *pic, int slave)
{
 int imr_addr;


 spinlock_enter();
 outb(pic->at_ioaddr, ICW1_RESET | ICW1_IC4);
 imr_addr = pic->at_ioaddr + ICU_IMR_OFFSET;


 outb(imr_addr, pic->at_intbase);






 if (slave)
  outb(imr_addr, ICU_SLAVEID);
 else
  outb(imr_addr, IRQ_MASK(ICU_SLAVEID));


 if (slave)
  outb(imr_addr, SLAVE_MODE);
 else
  outb(imr_addr, MASTER_MODE);


 outb(imr_addr, pic->at_imen);


 outb(pic->at_ioaddr, OCW3_SEL | OCW3_RR);


 if (!slave)
  outb(pic->at_ioaddr, OCW2_R | OCW2_SL | OCW2_L1);

 spinlock_exit();
}
