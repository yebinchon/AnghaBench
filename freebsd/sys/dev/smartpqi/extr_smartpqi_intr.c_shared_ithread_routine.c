
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int pqisrc_softstate_t ;
struct TYPE_2__ {int oq_id; int pqi_dev; } ;
typedef TYPE_1__ pqi_intr_ctx_t ;


 int DBG_FUNC (char*) ;
 int * device_get_softc (int ) ;
 int pqisrc_process_event_intr_src (int *,int) ;
 int pqisrc_process_response_queue (int *,int) ;

__attribute__((used)) static void shared_ithread_routine(void *arg)
{
 pqi_intr_ctx_t *intr_ctx = (pqi_intr_ctx_t *)arg;
 pqisrc_softstate_t *softs = device_get_softc(intr_ctx->pqi_dev);
 int oq_id = intr_ctx->oq_id;

 DBG_FUNC("IN\n");

 pqisrc_process_response_queue(softs, oq_id);
 pqisrc_process_event_intr_src(softs, oq_id - 1);

 DBG_FUNC("OUT\n");
}
