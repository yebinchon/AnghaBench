
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int heartbeat_timeout_id; } ;
struct TYPE_6__ {TYPE_1__ os_specific; } ;
typedef TYPE_2__ pqisrc_softstate_t ;


 int DBG_FUNC (char*) ;
 int os_start_heartbeat_timer ;
 int untimeout (int ,TYPE_2__*,int ) ;

void os_stop_heartbeat_timer(pqisrc_softstate_t *softs)
{
 DBG_FUNC("IN\n");


 untimeout(os_start_heartbeat_timer, softs,
   softs->os_specific.heartbeat_timeout_id);

 DBG_FUNC("OUT\n");
}
