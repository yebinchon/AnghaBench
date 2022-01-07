
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef union ccb {int dummy; } ccb ;
struct TYPE_4__ {void* func_code; } ;
struct ccb_setasync {struct cam_sim* callback_arg; void* callback; void* event_enable; TYPE_2__ ccb_h; } ;
struct cam_sim {int dummy; } ;
struct cam_path {int dummy; } ;
struct cam_devq {int dummy; } ;
struct ahc_softc {int features; int flags; TYPE_1__* platform_data; int dev_softc; } ;
struct TYPE_3__ {int eh; struct cam_path* path_b; struct cam_sim* sim_b; struct cam_path* path; struct cam_sim* sim; int mtx; } ;


 void* AC_LOST_DEVICE ;
 int AHC_MAX_QUEUE ;
 int AHC_PRIMARY_CHANNEL ;
 int AHC_TWIN ;
 int CAM_LUN_WILDCARD ;
 scalar_t__ CAM_REQ_CMP ;
 scalar_t__ CAM_SUCCESS ;
 int CAM_TARGET_WILDCARD ;
 int EVENTHANDLER_REGISTER (int ,int ,struct ahc_softc*,int ) ;
 int FALSE ;
 int SHUTDOWN_PRI_DEFAULT ;
 int TRUE ;
 void* XPT_SASYNC_CB ;
 int ahc_action ;
 void* ahc_async ;
 int ahc_controller_info (struct ahc_softc*,char*) ;
 int ahc_intr_enable (struct ahc_softc*,int ) ;
 int ahc_lock (struct ahc_softc*) ;
 int ahc_poll ;
 int ahc_shutdown ;
 scalar_t__ ahc_spawn_recovery_thread (struct ahc_softc*) ;
 int ahc_unlock (struct ahc_softc*) ;
 struct cam_sim* cam_sim_alloc (int ,int ,char*,struct ahc_softc*,int ,int *,int,int ,struct cam_devq*) ;
 int cam_sim_free (struct cam_sim*,int ) ;
 int cam_sim_path (struct cam_sim*) ;
 struct cam_devq* cam_simq_alloc (int ) ;
 int cam_simq_free (struct cam_devq*) ;
 int device_get_unit (int ) ;
 int printf (char*,...) ;
 int shutdown_final ;
 int xpt_action (union ccb*) ;
 int xpt_bus_deregister (int ) ;
 scalar_t__ xpt_bus_register (struct cam_sim*,int ,int) ;
 scalar_t__ xpt_create_path (struct cam_path**,int *,int ,int ,int ) ;
 int xpt_setup_ccb (TYPE_2__*,struct cam_path*,int) ;

int
ahc_attach(struct ahc_softc *ahc)
{
 char ahc_info[256];
 struct ccb_setasync csa;
 struct cam_devq *devq;
 int bus_id;
 int bus_id2;
 struct cam_sim *sim;
 struct cam_sim *sim2;
 struct cam_path *path;
 struct cam_path *path2;
 int count;

 count = 0;
 sim = ((void*)0);
 sim2 = ((void*)0);
 path = ((void*)0);
 path2 = ((void*)0);





 if (ahc_spawn_recovery_thread(ahc) != 0)
  goto fail;

 ahc_controller_info(ahc, ahc_info);
 printf("%s\n", ahc_info);
 ahc_lock(ahc);





 if ((ahc->features & AHC_TWIN) != 0
  && (ahc->flags & AHC_PRIMARY_CHANNEL) != 0) {
  bus_id = 1;
  bus_id2 = 0;
 } else {
  bus_id = 0;
  bus_id2 = 1;
 }




 devq = cam_simq_alloc(AHC_MAX_QUEUE);
 if (devq == ((void*)0))
  goto fail;




 sim = cam_sim_alloc(ahc_action, ahc_poll, "ahc", ahc,
       device_get_unit(ahc->dev_softc),
       &ahc->platform_data->mtx, 1, AHC_MAX_QUEUE, devq);
 if (sim == ((void*)0)) {
  cam_simq_free(devq);
  goto fail;
 }

 if (xpt_bus_register(sim, ahc->dev_softc, bus_id) != CAM_SUCCESS) {
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
 csa.callback = ahc_async;
 csa.callback_arg = sim;
 xpt_action((union ccb *)&csa);
 count++;

 if (ahc->features & AHC_TWIN) {
  sim2 = cam_sim_alloc(ahc_action, ahc_poll, "ahc",
        ahc, device_get_unit(ahc->dev_softc),
        &ahc->platform_data->mtx, 1,
        AHC_MAX_QUEUE, devq);

  if (sim2 == ((void*)0)) {
   printf("ahc_attach: Unable to attach second "
          "bus due to resource shortage");
   goto fail;
  }

  if (xpt_bus_register(sim2, ahc->dev_softc, bus_id2) !=
      CAM_SUCCESS) {
   printf("ahc_attach: Unable to attach second "
          "bus due to resource shortage");




   cam_sim_free(sim2, FALSE);
   goto fail;
  }

  if (xpt_create_path(&path2, ((void*)0),
        cam_sim_path(sim2),
        CAM_TARGET_WILDCARD,
        CAM_LUN_WILDCARD) != CAM_REQ_CMP) {
   xpt_bus_deregister(cam_sim_path(sim2));
   cam_sim_free(sim2, FALSE);
   sim2 = ((void*)0);
   goto fail;
  }
  xpt_setup_ccb(&csa.ccb_h, path2, 5);
  csa.ccb_h.func_code = XPT_SASYNC_CB;
  csa.event_enable = AC_LOST_DEVICE;
  csa.callback = ahc_async;
  csa.callback_arg = sim2;
  xpt_action((union ccb *)&csa);
  count++;
 }

fail:
 if ((ahc->features & AHC_TWIN) != 0
  && (ahc->flags & AHC_PRIMARY_CHANNEL) != 0) {
  ahc->platform_data->sim_b = sim;
  ahc->platform_data->path_b = path;
  ahc->platform_data->sim = sim2;
  ahc->platform_data->path = path2;
 } else {
  ahc->platform_data->sim = sim;
  ahc->platform_data->path = path;
  ahc->platform_data->sim_b = sim2;
  ahc->platform_data->path_b = path2;
 }
 ahc_unlock(ahc);

 if (count != 0) {

  ahc->platform_data->eh =
      EVENTHANDLER_REGISTER(shutdown_final, ahc_shutdown,
       ahc, SHUTDOWN_PRI_DEFAULT);
  ahc_intr_enable(ahc, TRUE);
 }

 return (count);
}
