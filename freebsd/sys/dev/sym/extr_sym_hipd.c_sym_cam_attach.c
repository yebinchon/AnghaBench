
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct cam_sim {int dummy; } ;
struct cam_path {int dummy; } ;
struct cam_devq {int dummy; } ;
typedef TYPE_1__* hcb_p ;
struct TYPE_7__ {struct cam_sim* sim; struct cam_path* path; int device; int mtx; int intr; int irq_res; } ;


 int AC_LOST_DEVICE ;
 int CAM_LUN_WILDCARD ;
 scalar_t__ CAM_REQ_CMP ;
 scalar_t__ CAM_SUCCESS ;
 int CAM_TARGET_WILDCARD ;
 int FALSE ;
 int INTR_ENTROPY ;
 int INTR_MPSAFE ;
 int INTR_TYPE_CAM ;
 int SYM_CONF_MAX_START ;
 int SYM_LOCK () ;
 int SYM_SETUP_MAX_TAG ;
 int SYM_UNLOCK () ;
 int bus_setup_intr (int ,int ,int,int *,int ,TYPE_1__*,int *) ;
 struct cam_sim* cam_sim_alloc (int ,int ,char*,TYPE_1__*,int ,int *,int,int ,struct cam_devq*) ;
 int cam_sim_free (struct cam_sim*,int ) ;
 int cam_sim_path (struct cam_sim*) ;
 struct cam_devq* cam_simq_alloc (int ) ;
 int cam_simq_free (struct cam_devq*) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*,int) ;
 int sym_action ;
 int sym_async ;
 int sym_cam_free (TYPE_1__*) ;
 int sym_init (TYPE_1__*,int ) ;
 int sym_intr ;
 int sym_poll ;
 scalar_t__ xpt_bus_register (struct cam_sim*,int ,int ) ;
 scalar_t__ xpt_create_path (struct cam_path**,int *,int ,int ,int ) ;
 scalar_t__ xpt_register_async (int ,int ,struct cam_sim*,struct cam_path*) ;

__attribute__((used)) static int sym_cam_attach(hcb_p np)
{
 struct cam_devq *devq = ((void*)0);
 struct cam_sim *sim = ((void*)0);
 struct cam_path *path = ((void*)0);
 int err;




 err = bus_setup_intr(np->device, np->irq_res,
   INTR_ENTROPY | INTR_MPSAFE | INTR_TYPE_CAM,
   ((void*)0), sym_intr, np, &np->intr);
 if (err) {
  device_printf(np->device, "bus_setup_intr() failed: %d\n",
         err);
  goto fail;
 }




 devq = cam_simq_alloc(SYM_CONF_MAX_START);
 if (!devq)
  goto fail;




 sim = cam_sim_alloc(sym_action, sym_poll, "sym", np,
   device_get_unit(np->device),
   &np->mtx, 1, SYM_SETUP_MAX_TAG, devq);
 if (!sim)
  goto fail;

 SYM_LOCK();

 if (xpt_bus_register(sim, np->device, 0) != CAM_SUCCESS)
  goto fail;
 np->sim = sim;
 sim = ((void*)0);

 if (xpt_create_path(&path, ((void*)0),
       cam_sim_path(np->sim), CAM_TARGET_WILDCARD,
       CAM_LUN_WILDCARD) != CAM_REQ_CMP) {
  goto fail;
 }
 np->path = path;




 if (xpt_register_async(AC_LOST_DEVICE, sym_async, np->sim, path) !=
     CAM_REQ_CMP)
  goto fail;







 sym_init (np, 0);

 SYM_UNLOCK();

 return 1;
fail:
 if (sim)
  cam_sim_free(sim, FALSE);
 if (devq)
  cam_simq_free(devq);

 SYM_UNLOCK();

 sym_cam_free(np);

 return 0;
}
