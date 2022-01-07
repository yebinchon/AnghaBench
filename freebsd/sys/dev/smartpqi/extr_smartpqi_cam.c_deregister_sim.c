
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef union ccb {int dummy; } ccb ;
struct TYPE_3__ {int map_lock; void* mtx_init; int cam_lock; int * devq; int * sim; void* sim_registered; int path; } ;
struct pqisrc_softstate {TYPE_1__ os_specific; } ;
struct TYPE_4__ {int func_code; } ;
struct ccb_setasync {struct pqisrc_softstate* callback_arg; int callback; scalar_t__ event_enable; TYPE_2__ ccb_h; } ;


 int DBG_FUNC (char*) ;
 void* FALSE ;
 int XPT_SASYNC_CB ;
 int cam_sim_free (int *,void*) ;
 int cam_sim_path (int *) ;
 int cam_simq_free (int *) ;
 int mtx_destroy (int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int smartpqi_async ;
 int xpt_action (union ccb*) ;
 int xpt_bus_deregister (int ) ;
 int xpt_free_path (int ) ;
 int xpt_release_simq (int *,int ) ;
 int xpt_setup_ccb (TYPE_2__*,int ,int) ;

void deregister_sim(struct pqisrc_softstate *softs)
{
 struct ccb_setasync csa;

 DBG_FUNC("IN\n");

 if (softs->os_specific.mtx_init) {
  mtx_lock(&softs->os_specific.cam_lock);
 }


 xpt_setup_ccb(&csa.ccb_h, softs->os_specific.path, 5);
 csa.ccb_h.func_code = XPT_SASYNC_CB;
 csa.event_enable = 0;
 csa.callback = smartpqi_async;
 csa.callback_arg = softs;
 xpt_action((union ccb *)&csa);
 xpt_free_path(softs->os_specific.path);

 xpt_release_simq(softs->os_specific.sim, 0);

 xpt_bus_deregister(cam_sim_path(softs->os_specific.sim));
 softs->os_specific.sim_registered = FALSE;

 if (softs->os_specific.sim) {
  cam_sim_free(softs->os_specific.sim, FALSE);
  softs->os_specific.sim = ((void*)0);
 }
 if (softs->os_specific.mtx_init) {
  mtx_unlock(&softs->os_specific.cam_lock);
 }
 if (softs->os_specific.devq != ((void*)0)) {
  cam_simq_free(softs->os_specific.devq);
 }
 if (softs->os_specific.mtx_init) {
  mtx_destroy(&softs->os_specific.cam_lock);
  softs->os_specific.mtx_init = FALSE;
 }

 mtx_destroy(&softs->os_specific.map_lock);

 DBG_FUNC("OUT\n");
}
