
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int iterator_running; } ;


 TYPE_1__ sctp_it_ctl ;
 int wakeup (int *) ;

void
sctp_wakeup_iterator(void)
{
 wakeup(&sctp_it_ctl.iterator_running);
}
