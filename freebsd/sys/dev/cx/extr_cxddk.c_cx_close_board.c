
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ port; TYPE_1__* chan; } ;
typedef TYPE_2__ cx_board_t ;
struct TYPE_5__ {scalar_t__ type; } ;


 int BCR0 (scalar_t__) ;
 int cx_setup_board (TYPE_2__*,int ,int ,int ) ;
 int outb (int ,int ) ;

void cx_close_board (cx_board_t *b)
{
 cx_setup_board (b, 0, 0, 0);


 outb (BCR0(b->port), 0);
 if (b->chan[8].type || b->chan[12].type)
  outb (BCR0(b->port+0x10), 0);
}
