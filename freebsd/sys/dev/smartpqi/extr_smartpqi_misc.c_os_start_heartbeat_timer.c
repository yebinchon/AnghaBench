
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int heartbeat_timeout_id; } ;
struct pqisrc_softstate {TYPE_1__ os_specific; } ;


 int DBG_FUNC (char*) ;
 int OS_FW_HEARTBEAT_TIMER_INTERVAL ;
 int hz ;
 int pqisrc_ctrl_offline (struct pqisrc_softstate*) ;
 int pqisrc_heartbeat_timer_handler (struct pqisrc_softstate*) ;
 int timeout (void (*) (void*),struct pqisrc_softstate*,int) ;

void os_start_heartbeat_timer(void *data)
{
 struct pqisrc_softstate *softs = (struct pqisrc_softstate *)data;
 DBG_FUNC("IN\n");

 pqisrc_heartbeat_timer_handler(softs);
 if (!pqisrc_ctrl_offline(softs)) {
  softs->os_specific.heartbeat_timeout_id =
  timeout(os_start_heartbeat_timer, softs,
  OS_FW_HEARTBEAT_TIMER_INTERVAL * hz);
 }

       DBG_FUNC("OUT\n");
}
