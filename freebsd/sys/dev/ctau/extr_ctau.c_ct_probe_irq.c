
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bcr0; int port; } ;
typedef TYPE_1__ ct_board_t ;


 int BCR0 (int ) ;
 int BCR0_HDRUN ;
 int DS_IMR2 ;
 int E1CS0 (int ) ;
 int E1CS1 (int ) ;
 int HD_TCNT_0R ;
 int HD_TCONR_0R ;
 int HD_TCSR_0R ;
 int HD_TEPR_0R ;
 int IER0 (int ) ;
 int IER1 (int ) ;
 int IER2 (int ) ;
 int IER2_RX_TME_0 ;
 int R (int ,int ) ;
 int SR2_SEC ;
 int TCSR_ENABLE ;
 int TCSR_INTR ;
 int cte_out (int ,int ,int ) ;
 int inb (int) ;
 int* irqmask ;
 int outb (int,int) ;
 int outw (int,int) ;

int ct_probe_irq (ct_board_t *b, int irq)
{
 int mask;

 outb (0x20, 0x0a);
 mask = inb (0x20);
 outb (0xa0, 0x0a);
 mask |= inb (0xa0) << 8;

 if (irq > 0) {
  outb (BCR0(b->port), BCR0_HDRUN | irqmask[irq]);
  outb (R(b->port,HD_TEPR_0R), 0);
  outw (R(b->port,HD_TCONR_0R), 1);
  outw (R(b->port,HD_TCNT_0R), 0);
  outb (R(b->port,HD_TCSR_0R), TCSR_ENABLE | TCSR_INTR);
  outb (IER2(b->port), IER2_RX_TME_0);
 } else if (irq < 0) {
  outb (BCR0(b->port), BCR0_HDRUN | irqmask[-irq]);
  outb (IER0(b->port), 0);
  outb (IER1(b->port), 0);
  outb (IER2(b->port), 0);
  outb (R(b->port,HD_TCSR_0R), 0);
  cte_out (E1CS0 (b->port), DS_IMR2, 0);
  cte_out (E1CS1 (b->port), DS_IMR2, 0);
  if (-irq > 7) {
   outb (0xa0, 0x60 | ((-irq) & 7));
   outb (0x20, 0x62);
  } else
   outb (0x20, 0x60 | (-irq));
 } else {
  outb (BCR0(b->port), b->bcr0);
  cte_out (E1CS0 (b->port), DS_IMR2, SR2_SEC);
  cte_out (E1CS1 (b->port), DS_IMR2, SR2_SEC);
 }

 return mask;
}
