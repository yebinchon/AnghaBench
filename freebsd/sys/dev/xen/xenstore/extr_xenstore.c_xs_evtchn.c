
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int evtchn_port_t ;
struct TYPE_2__ {int evtchn; } ;


 TYPE_1__ xs ;

evtchn_port_t
xs_evtchn(void)
{

    return (xs.evtchn);
}
