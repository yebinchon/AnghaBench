
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; int bcr0; int port; } ;
typedef TYPE_1__ cx_board_t ;


 int BCR0 (int ) ;
 int BCR02X_LED ;

 int outb (int ,int ) ;

void cx_led (cx_board_t *b, int on)
{
 switch (b->type) {
 case 128:
  if (on) b->bcr0 |= BCR02X_LED;
  else b->bcr0 &= ~BCR02X_LED;
  outb (BCR0(b->port), b->bcr0);
  break;
 }
}
