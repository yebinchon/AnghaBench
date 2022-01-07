
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int encod; } ;
struct TYPE_6__ {TYPE_1__ md2; } ;
struct TYPE_7__ {TYPE_2__ opt; int MD2; } ;
typedef TYPE_3__ ct_chan_t ;


 int MD2_ENCOD_NRZ ;
 int MD2_ENCOD_NRZI ;
 int outb (int ,unsigned char) ;

void ct_set_nrzi (ct_chan_t *c, int on)
{
 c->opt.md2.encod = on ? MD2_ENCOD_NRZI : MD2_ENCOD_NRZ;
 outb (c->MD2, *(unsigned char*)&c->opt.md2);
}
