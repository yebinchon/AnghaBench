
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num; int port; } ;
typedef TYPE_1__ cx_chan_t ;


 int CAR (int ) ;
 int MSVR (int ) ;
 int MSV_CTS ;
 int inb (int ) ;
 int outb (int ,int) ;

int cx_get_cts (cx_chan_t *c)
{
 outb (CAR(c->port), c->num & 3);
 return (inb (MSVR(c->port)) & MSV_CTS ? 1 : 0);
}
