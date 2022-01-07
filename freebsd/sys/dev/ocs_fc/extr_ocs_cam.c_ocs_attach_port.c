
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint32_t ;
struct cam_sim {int dummy; } ;
struct cam_path {int dummy; } ;
struct TYPE_9__ {int sim_lock; int dev; int devq; } ;
typedef TYPE_1__ ocs_t ;
struct TYPE_10__ {int ltask; int ldt; struct cam_path* path; struct cam_sim* sim; TYPE_1__* ocs; } ;
typedef TYPE_2__ ocs_fcport ;
typedef int int32_t ;


 int CAM_LUN_WILDCARD ;
 scalar_t__ CAM_REQ_CMP ;
 scalar_t__ CAM_SUCCESS ;
 int CAM_TARGET_WILDCARD ;
 int FALSE ;
 TYPE_2__* FCPORT (TYPE_1__*,int) ;
 int OCS_SCSI_MAX_IOS ;
 int TASK_INIT (int *,int,int ,TYPE_2__*) ;
 int callout_init_mtx (int *,int *,int ) ;
 struct cam_sim* cam_sim_alloc (int ,int ,int ,TYPE_1__*,int ,int *,int ,int ,int ) ;
 int cam_sim_free (struct cam_sim*,int ) ;
 int cam_sim_path (struct cam_sim*) ;
 int device_get_name (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*,...) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int ocs_action ;
 int ocs_ldt_task ;
 int ocs_poll ;
 int ocs_scsi_get_property (TYPE_1__*,int ) ;
 int xpt_bus_deregister (int ) ;
 scalar_t__ xpt_bus_register (struct cam_sim*,int ,int) ;
 scalar_t__ xpt_create_path (struct cam_path**,int *,int ,int ,int ) ;

__attribute__((used)) static int32_t
ocs_attach_port(ocs_t *ocs, int chan)
{

 struct cam_sim *sim = ((void*)0);
 struct cam_path *path = ((void*)0);
 uint32_t max_io = ocs_scsi_get_property(ocs, OCS_SCSI_MAX_IOS);
 ocs_fcport *fcp = FCPORT(ocs, chan);

 if (((void*)0) == (sim = cam_sim_alloc(ocs_action, ocs_poll,
    device_get_name(ocs->dev), ocs,
    device_get_unit(ocs->dev), &ocs->sim_lock,
    max_io, max_io, ocs->devq))) {
  device_printf(ocs->dev, "Can't allocate SIM\n");
  return 1;
 }

 mtx_lock(&ocs->sim_lock);
 if (CAM_SUCCESS != xpt_bus_register(sim, ocs->dev, chan)) {
  device_printf(ocs->dev, "Can't register bus %d\n", 0);
  mtx_unlock(&ocs->sim_lock);
  cam_sim_free(sim, FALSE);
  return 1;
 }
 mtx_unlock(&ocs->sim_lock);

 if (CAM_REQ_CMP != xpt_create_path(&path, ((void*)0), cam_sim_path(sim),
    CAM_TARGET_WILDCARD, CAM_LUN_WILDCARD)) {
  device_printf(ocs->dev, "Can't create path\n");
  xpt_bus_deregister(cam_sim_path(sim));
  mtx_unlock(&ocs->sim_lock);
  cam_sim_free(sim, FALSE);
  return 1;
 }

 fcp->ocs = ocs;
 fcp->sim = sim;
 fcp->path = path;

 callout_init_mtx(&fcp->ldt, &ocs->sim_lock, 0);
 TASK_INIT(&fcp->ltask, 1, ocs_ldt_task, fcp);

 return 0;
}
