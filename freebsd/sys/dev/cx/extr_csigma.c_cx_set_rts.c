
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rts; int num; int port; } ;
typedef TYPE_1__ cx_chan_t ;


 int CAR (int ) ;
 int MSVR_RTS (int ) ;
 int MSV_RTS ;
 int outb (int ,int) ;

void cx_set_rts (cx_chan_t *c, int on)
{
 c->rts = on ? 1 : 0;
 outb (CAR(c->port), c->num & 3);
 outb (MSVR_RTS(c->port), on ? MSV_RTS : 0);
}
