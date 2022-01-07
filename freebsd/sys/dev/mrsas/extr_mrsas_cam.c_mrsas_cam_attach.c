
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mrsas_softc {int max_scsi_cmds; int mrsas_dev; int sim_lock; int * sim_1; int path_1; int * sim_0; int path_0; int ev_tq; int ev_task; } ;
struct cam_devq {int dummy; } ;


 int CAM_LUN_WILDCARD ;
 scalar_t__ CAM_REQ_CMP ;
 scalar_t__ CAM_SUCCESS ;
 int CAM_TARGET_WILDCARD ;
 int ENOMEM ;
 int ENXIO ;
 int M_NOWAIT ;
 int M_ZERO ;
 int TASK_INIT (int *,int ,void*,struct mrsas_softc*) ;
 int TRUE ;
 void* cam_sim_alloc (int ,int ,char*,struct mrsas_softc*,int ,int *,int,int,struct cam_devq*) ;
 int cam_sim_free (int *,int ) ;
 int cam_sim_path (int *) ;
 struct cam_devq* cam_simq_alloc (int) ;
 int cam_simq_free (struct cam_devq*) ;
 int device_get_nameunit (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*) ;
 int mrsas_action ;
 scalar_t__ mrsas_aen_handler ;
 scalar_t__ mrsas_bus_scan (struct mrsas_softc*) ;
 int mrsas_cam_poll ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int taskqueue_create (char*,int,int ,int *) ;
 int taskqueue_start_threads (int *,int,int,char*,int ) ;
 int taskqueue_thread_enqueue ;
 int xpt_bus_deregister (int ) ;
 scalar_t__ xpt_bus_register (int *,int ,int) ;
 scalar_t__ xpt_create_path (int *,int *,int ,int ,int ) ;

int
mrsas_cam_attach(struct mrsas_softc *sc)
{
 struct cam_devq *devq;
 int mrsas_cam_depth;

 mrsas_cam_depth = sc->max_scsi_cmds;

 if ((devq = cam_simq_alloc(mrsas_cam_depth)) == ((void*)0)) {
  device_printf(sc->mrsas_dev, "Cannot allocate SIM queue\n");
  return (ENOMEM);
 }



 sc->sim_0 = cam_sim_alloc(mrsas_action, mrsas_cam_poll, "mrsas", sc,
     device_get_unit(sc->mrsas_dev), &sc->sim_lock, mrsas_cam_depth,
     mrsas_cam_depth, devq);
 if (sc->sim_0 == ((void*)0)) {
  cam_simq_free(devq);
  device_printf(sc->mrsas_dev, "Cannot register SIM\n");
  return (ENXIO);
 }

 TASK_INIT(&sc->ev_task, 0, (void *)mrsas_aen_handler, sc);
 sc->ev_tq = taskqueue_create("mrsas_taskq", M_NOWAIT | M_ZERO,
     taskqueue_thread_enqueue, &sc->ev_tq);


 taskqueue_start_threads(&sc->ev_tq, 1, 255, "%s taskq",
     device_get_nameunit(sc->mrsas_dev));
 mtx_lock(&sc->sim_lock);
 if (xpt_bus_register(sc->sim_0, sc->mrsas_dev, 0) != CAM_SUCCESS) {
  cam_sim_free(sc->sim_0, TRUE);
  mtx_unlock(&sc->sim_lock);
  return (ENXIO);
 }
 if (xpt_create_path(&sc->path_0, ((void*)0), cam_sim_path(sc->sim_0),
     CAM_TARGET_WILDCARD, CAM_LUN_WILDCARD) != CAM_REQ_CMP) {
  xpt_bus_deregister(cam_sim_path(sc->sim_0));
  cam_sim_free(sc->sim_0, TRUE);

  mtx_unlock(&sc->sim_lock);
  return (ENXIO);
 }
 mtx_unlock(&sc->sim_lock);




 sc->sim_1 = cam_sim_alloc(mrsas_action, mrsas_cam_poll, "mrsas", sc,
     device_get_unit(sc->mrsas_dev), &sc->sim_lock, mrsas_cam_depth,
     mrsas_cam_depth, devq);
 if (sc->sim_1 == ((void*)0)) {
  cam_simq_free(devq);
  device_printf(sc->mrsas_dev, "Cannot register SIM\n");
  return (ENXIO);
 }
 mtx_lock(&sc->sim_lock);
 if (xpt_bus_register(sc->sim_1, sc->mrsas_dev, 1) != CAM_SUCCESS) {
  cam_sim_free(sc->sim_1, TRUE);
  mtx_unlock(&sc->sim_lock);
  return (ENXIO);
 }
 if (xpt_create_path(&sc->path_1, ((void*)0), cam_sim_path(sc->sim_1),
     CAM_TARGET_WILDCARD,
     CAM_LUN_WILDCARD) != CAM_REQ_CMP) {
  xpt_bus_deregister(cam_sim_path(sc->sim_1));
  cam_sim_free(sc->sim_1, TRUE);
  mtx_unlock(&sc->sim_lock);
  return (ENXIO);
 }
 mtx_unlock(&sc->sim_lock);


 if (mrsas_bus_scan(sc)) {
  device_printf(sc->mrsas_dev, "Error in bus scan.\n");
  return (1);
 }

 return (0);
}
