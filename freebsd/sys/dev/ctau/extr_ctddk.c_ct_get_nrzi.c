
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ encod; } ;
struct TYPE_6__ {TYPE_1__ md2; } ;
struct TYPE_7__ {TYPE_2__ opt; } ;
typedef TYPE_3__ ct_chan_t ;


 scalar_t__ MD2_ENCOD_NRZI ;

int ct_get_nrzi (ct_chan_t *c)
{
 return (c->opt.md2.encod == MD2_ENCOD_NRZI);
}
