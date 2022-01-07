
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num; int port; } ;
typedef TYPE_1__ cx_chan_t ;


 int CAR (int ) ;
 int CCR_DISTX ;
 int CCR_ENTX ;
 int cx_cmd (int ,int ) ;
 int outb (int ,int) ;

void cx_transmitter_ctl (cx_chan_t *c,int start)
{
 outb (CAR(c->port), c->num & 3);
 cx_cmd (c->port, start ? CCR_ENTX : CCR_DISTX);
}
