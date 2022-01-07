
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; int e1cfg; int port; int gmd2; } ;
typedef TYPE_1__ ct_board_t ;





 int E1CFG (int ) ;
 int E1CFG_LED ;
 int GMD2 (int ) ;
 int GMD2_LED ;
 int outb (int ,int ) ;

void ct_led (ct_board_t *b, int on)
{
 switch (b->type) {
 case 129:
 case 128:
 case 130:
  if (on) b->gmd2 |= GMD2_LED;
  else b->gmd2 &= ~GMD2_LED;
  outb (GMD2(b->port), b->gmd2);
  break;
 default:
  if (on) b->e1cfg |= E1CFG_LED;
  else b->e1cfg &= ~E1CFG_LED;
  outb (E1CFG(b->port), b->e1cfg);
  break;
 }
}
