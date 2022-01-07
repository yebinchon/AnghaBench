
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ num; TYPE_1__* board; } ;
typedef TYPE_2__ ct_chan_t ;
struct TYPE_4__ {int bcr2; } ;


 int BCR2_INVRXC0 ;
 int BCR2_INVRXC1 ;

int ct_get_invrxc (ct_chan_t *c)
{
 return (c->board->bcr2 & (c->num ? BCR2_INVRXC1 : BCR2_INVRXC0)) != 0;
}
