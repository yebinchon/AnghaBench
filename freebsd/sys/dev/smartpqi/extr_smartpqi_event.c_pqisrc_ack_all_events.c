
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct pqi_event {int pending; } ;
struct TYPE_4__ {struct pqi_event* pending_events; } ;
typedef TYPE_1__ pqisrc_softstate_t ;


 int DBG_ERR (char*) ;
 int DBG_FUNC (char*) ;
 int PQI_NUM_SUPPORTED_EVENTS ;
 scalar_t__ PQI_STATUS_SUCCESS ;
 int pqisrc_acknowledge_event (TYPE_1__*,struct pqi_event*) ;
 scalar_t__ pqisrc_rescan_devices (TYPE_1__*) ;

void
pqisrc_ack_all_events(void *arg1)
{
 int i;
 struct pqi_event *pending_event;
 pqisrc_softstate_t *softs = (pqisrc_softstate_t*)arg1;

 DBG_FUNC(" IN\n");


 pending_event = &softs->pending_events[0];
 for (i=0; i < PQI_NUM_SUPPORTED_EVENTS; i++) {
  if (pending_event->pending == 1) {
   pending_event->pending = 0;
   pqisrc_acknowledge_event(softs, pending_event);
  }
  pending_event++;
 }


 if ((pqisrc_rescan_devices(softs)) != PQI_STATUS_SUCCESS) {
   DBG_ERR(" Failed to Re-Scan devices\n ");
 }
 DBG_FUNC(" OUT\n");

}
