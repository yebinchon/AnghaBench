
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int evtchn_port_t ;
struct TYPE_4__ {int evtchn; } ;
struct TYPE_5__ {TYPE_1__ domU; } ;
struct TYPE_6__ {TYPE_2__ console; } ;


 TYPE_3__* legacy_start_info ;

__attribute__((used)) static evtchn_port_t
legacy_get_console_evtchn(void)
{

 return (legacy_start_info->console.domU.evtchn);
}
