
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num; int port; } ;
typedef TYPE_1__ cx_chan_t ;


 int CAR (int ) ;
 int CSR (int ) ;
 int CSRA_RXEN ;
 int inb (int ) ;
 int outb (int ,int) ;

int cx_receive_enabled (cx_chan_t *c)
{
 outb (CAR(c->port), c->num & 3);
 return (inb (CSR(c->port)) & CSRA_RXEN) != 0;
}
