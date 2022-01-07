
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int port; } ;
typedef TYPE_1__ cx_chan_t ;


 int BERCNT (int ) ;
 int BRD_INTR_LEVEL ;
 int DMR (int ) ;
 int MPILR (int ) ;
 int RPILR (int ) ;
 int TPILR (int ) ;
 int TPR (int ) ;
 int cx_reset (int ) ;
 int outb (int ,int) ;

__attribute__((used)) static void cx_setup_chip (cx_chan_t *c)
{

 cx_reset (c->port);





 outb (RPILR(c->port), BRD_INTR_LEVEL);
 outb (TPILR(c->port), BRD_INTR_LEVEL);
 outb (MPILR(c->port), BRD_INTR_LEVEL);


 outb (BERCNT(c->port), 0);


 outb (DMR(c->port), 0);


 outb (TPR(c->port), 10);
}
