
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int loop; } ;
struct TYPE_7__ {TYPE_1__ md2; } ;
struct TYPE_9__ {scalar_t__ mode; int lx; TYPE_2__ opt; TYPE_3__* board; scalar_t__ num; } ;
typedef TYPE_4__ ct_chan_t ;
struct TYPE_8__ {int port; } ;


 int CCR2_LLOOP ;
 int DS_CCR2 ;
 unsigned short E1CS0 (int ) ;
 unsigned short E1CS1 (int ) ;
 int LX_LLOOP ;
 int MD2_LLOOP ;
 scalar_t__ M_E1 ;
 scalar_t__ M_G703 ;
 int cte_in (unsigned short,int ) ;

int ct_get_loop (ct_chan_t *c)
{
 if (c->mode == M_E1) {
  unsigned short p = c->num ? E1CS1 (c->board->port) :
         E1CS0 (c->board->port);

  return cte_in (p, DS_CCR2) & CCR2_LLOOP;
 }
 if (c->mode == M_G703)
  return c->lx & LX_LLOOP;


 return (c->opt.md2.loop & MD2_LLOOP) != 0;
}
