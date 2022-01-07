
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int port; } ;
typedef TYPE_1__ ct_board_t ;


 int BCR0 (int ) ;
 int ct_disable_dma (TYPE_1__*) ;
 int ct_led (TYPE_1__*,int ) ;
 int ct_setup_board (TYPE_1__*,int ,int ,int ) ;
 int outb (int ,int ) ;

void ct_close_board (ct_board_t *b)
{
 ct_setup_board (b, 0, 0, 0);


 outb (BCR0(b->port), 0);


 ct_disable_dma (b);

 ct_led (b, 0);
}
