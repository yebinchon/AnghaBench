
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ num; TYPE_1__* board; } ;
typedef TYPE_2__ ct_chan_t ;
struct TYPE_4__ {int port; } ;


 int BSR1 (int ) ;
 int BSR1_DSR0 ;
 int BSR1_DSR1 ;
 int inb (int ) ;

int ct_get_dsr (ct_chan_t *c)
{
 return (inb (BSR1(c->board->port)) &
  (c->num ? BSR1_DSR1 : BSR1_DSR0)) != 0;
}
