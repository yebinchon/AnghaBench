
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef union ccb {int dummy; } ccb ;
struct TYPE_4__ {int func_code; } ;
struct ccb_setasync {struct cam_sim* callback_arg; int callback; int event_enable; TYPE_2__ ccb_h; } ;
struct cam_sim {int dummy; } ;
struct cam_path {int dummy; } ;
struct cam_devq {int dummy; } ;
struct ahd_softc {TYPE_1__* platform_data; int dev_softc; } ;
struct TYPE_3__ {int eh; struct cam_path* path; struct cam_sim* sim; int mtx; } ;


 int AC_LOST_DEVICE ;
 int AHD_MAX_QUEUE ;
 int CAM_LUN_WILDCARD ;
 scalar_t__ CAM_REQ_CMP ;
 scalar_t__ CAM_SUCCESS ;
 int CAM_TARGET_WILDCARD ;
 int EVENTHANDLER_REGISTER (int ,int ,struct ahd_softc*,int ) ;
 int SHUTDOWN_PRI_DEFAULT ;
 int TRUE ;
 int XPT_SASYNC_CB ;
 int ahd_action ;
 int ahd_async ;
 int ahd_controller_info (struct ahd_softc*,char*) ;
 int ahd_intr_enable (struct ahd_softc*,int ) ;
 int ahd_lock (struct ahd_softc*) ;
 int ahd_poll ;
 int ahd_shutdown ;
 scalar_t__ ahd_spawn_recovery_thread (struct ahd_softc*) ;
 int ahd_unlock (struct ahd_softc*) ;
 struct cam_sim* cam_sim_alloc (int ,int ,char*,struct ahd_softc*,int ,int *,int,int,struct cam_devq*) ;
 int cam_sim_free (struct cam_sim*,int ) ;
 int cam_sim_path (struct cam_sim*) ;
 struct cam_devq* cam_simq_alloc (int ) ;
 int cam_simq_free (struct cam_devq*) ;
 int device_get_unit (int ) ;
 int printf (char*,char*) ;
 int shutdown_final ;
 int xpt_action (union ccb*) ;
 int xpt_bus_deregister (int ) ;
 scalar_t__ xpt_bus_register (struct cam_sim*,int ,int ) ;
 scalar_t__ xpt_create_path (struct cam_path**,int *,int ,int ,int ) ;
 int xpt_setup_ccb (TYPE_2__*,struct cam_path*,int) ;

int
ahd_attach(struct ahd_softc *ahd)
{
 char ahd_info[256];
 struct ccb_setasync csa;
 struct cam_devq *devq;
 struct cam_sim *sim;
 struct cam_path *path;
 int count;

 count = 0;
 devq = ((void*)0);
 sim = ((void*)0);
 path = ((void*)0);




 if (ahd_spawn_recovery_thread(ahd) != 0)
  goto fail;

 ahd_controller_info(ahd, ahd_info);
 printf("%s\n", ahd_info);
 ahd_lock(ahd);




 devq = cam_simq_alloc(AHD_MAX_QUEUE);
 if (devq == ((void*)0))
  goto fail;




 sim = cam_sim_alloc(ahd_action, ahd_poll, "ahd", ahd,
       device_get_unit(ahd->dev_softc),
       &ahd->platform_data->mtx, 1, 256, devq);
 if (sim == ((void*)0)) {
  cam_simq_free(devq);
  goto fail;
 }

 if (xpt_bus_register(sim, ahd->dev_softc, 0) != CAM_SUCCESS) {
  cam_sim_free(sim, TRUE);
  sim = ((void*)0);
  goto fail;
 }

 if (xpt_create_path(&path, ((void*)0),
       cam_sim_path(sim), CAM_TARGET_WILDCARD,
       CAM_LUN_WILDCARD) != CAM_REQ_CMP) {
  xpt_bus_deregister(cam_sim_path(sim));
  cam_sim_free(sim, TRUE);
  sim = ((void*)0);
  goto fail;
 }

 xpt_setup_ccb(&csa.ccb_h, path, 5);
 csa.ccb_h.func_code = XPT_SASYNC_CB;
 csa.event_enable = AC_LOST_DEVICE;
 csa.callback = ahd_async;
 csa.callback_arg = sim;
 xpt_action((union ccb *)&csa);
 count++;

fail:
 ahd->platform_data->sim = sim;
 ahd->platform_data->path = path;
 ahd_unlock(ahd);
 if (count != 0) {

  ahd->platform_data->eh =
      EVENTHANDLER_REGISTER(shutdown_final, ahd_shutdown,
       ahd, SHUTDOWN_PRI_DEFAULT);
  ahd_intr_enable(ahd, TRUE);
 }


 return (count);
}
