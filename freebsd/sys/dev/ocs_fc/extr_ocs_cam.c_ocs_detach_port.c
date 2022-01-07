
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct cam_sim {int dummy; } ;
struct cam_path {int dummy; } ;
struct TYPE_8__ {int sim_lock; } ;
typedef TYPE_1__ ocs_t ;
struct TYPE_9__ {struct cam_sim* sim; struct cam_path* path; int targ_rsrc_wildcard; int ldt; } ;
typedef TYPE_2__ ocs_fcport ;
typedef int int32_t ;


 int AC_LOST_DEVICE ;
 int FALSE ;
 TYPE_2__* FCPORT (TYPE_1__*,int ) ;
 int callout_drain (int *) ;
 int cam_sim_free (struct cam_sim*,int ) ;
 int cam_sim_path (struct cam_sim*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int ocs_ldt_task (TYPE_2__*,int ) ;
 int ocs_tgt_resource_abort (TYPE_1__*,int *) ;
 int xpt_async (int ,struct cam_path*,int *) ;
 int xpt_bus_deregister (int ) ;
 int xpt_free_path (struct cam_path*) ;

__attribute__((used)) static int32_t
ocs_detach_port(ocs_t *ocs, int32_t chan)
{
 ocs_fcport *fcp = ((void*)0);
 struct cam_sim *sim = ((void*)0);
 struct cam_path *path = ((void*)0);
 fcp = FCPORT(ocs, chan);

 sim = fcp->sim;
 path = fcp->path;

 callout_drain(&fcp->ldt);
 ocs_ldt_task(fcp, 0);

 if (fcp->sim) {
  mtx_lock(&ocs->sim_lock);
   ocs_tgt_resource_abort(ocs, &fcp->targ_rsrc_wildcard);
   if (path) {
    xpt_async(AC_LOST_DEVICE, path, ((void*)0));
    xpt_free_path(path);
    fcp->path = ((void*)0);
   }
   xpt_bus_deregister(cam_sim_path(sim));

   cam_sim_free(sim, FALSE);
   fcp->sim = ((void*)0);
  mtx_unlock(&ocs->sim_lock);
 }

 return 0;
}
