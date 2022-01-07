
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dma; } ;
typedef TYPE_1__ cx_board_t ;


 int DMA_MASK ;
 int DMA_MASK_CLEAR ;
 int outb (int ,int) ;

void cx_disable_dma (cx_board_t *b)
{


 outb (DMA_MASK, (b->dma & 3) | DMA_MASK_CLEAR);

}
