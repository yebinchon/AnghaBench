
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ chan; int port; } ;
typedef TYPE_1__ ct_board_t ;


 int E1SR (int ) ;
 unsigned char E1SR_E0_IRQ1 ;
 unsigned char E1SR_E1_IRQ1 ;
 unsigned char E1SR_SCC_IRQ ;
 int ct_e1timer_interrupt (scalar_t__) ;
 int ct_scc_interrupt (TYPE_1__*) ;
 unsigned char inb (int ) ;

__attribute__((used)) static void ct_e1_interrupt (ct_board_t *b)
{
 unsigned char sr;

 sr = inb (E1SR(b->port));

 if (sr & E1SR_SCC_IRQ) ct_scc_interrupt (b);
 if (sr & E1SR_E0_IRQ1) ct_e1timer_interrupt (b->chan + 0);
 if (sr & E1SR_E1_IRQ1) ct_e1timer_interrupt (b->chan + 1);
}
