
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twa_softc {int sim_lock; int * sim; int path; int bus_dev; } ;
struct cam_devq {int dummy; } ;
typedef int TW_INT32 ;


 int CAM_LUN_WILDCARD ;
 scalar_t__ CAM_REQ_CMP ;
 scalar_t__ CAM_SUCCESS ;
 int CAM_TARGET_WILDCARD ;
 int ENOMEM ;
 int ENXIO ;
 int TRUE ;
 int TW_CL_MESSAGE_SOURCE_FREEBSD_DRIVER ;
 int TW_CL_SEVERITY_ERROR_STRING ;
 int TW_OSLI_MAX_NUM_IOS ;
 int * cam_sim_alloc (int ,int ,char*,struct twa_softc*,int ,int ,int ,int,struct cam_devq*) ;
 int cam_sim_free (int *,int ) ;
 int cam_sim_path (int *) ;
 struct cam_devq* cam_simq_alloc (int ) ;
 int cam_simq_free (struct cam_devq*) ;
 int device_get_unit (int ) ;
 int mtx_lock (int ) ;
 int mtx_unlock (int ) ;
 int tw_osli_dbg_dprintf (int,struct twa_softc*,char*) ;
 int tw_osli_printf (struct twa_softc*,char*,int ,int ,int,char*,int ) ;
 int twa_action ;
 int twa_poll ;
 int xpt_bus_deregister (int ) ;
 scalar_t__ xpt_bus_register (int *,int ,int ) ;
 scalar_t__ xpt_create_path (int *,int *,int ,int ,int ) ;

TW_INT32
tw_osli_cam_attach(struct twa_softc *sc)
{
 struct cam_devq *devq;

 tw_osli_dbg_dprintf(3, sc, "entered");




 if ((devq = cam_simq_alloc(TW_OSLI_MAX_NUM_IOS)) == ((void*)0)) {
  tw_osli_printf(sc, "error = %d",
   TW_CL_SEVERITY_ERROR_STRING,
   TW_CL_MESSAGE_SOURCE_FREEBSD_DRIVER,
   0x2100,
   "Failed to create SIM device queue",
   ENOMEM);
  return(ENOMEM);
 }







 tw_osli_dbg_dprintf(3, sc, "Calling cam_sim_alloc");
 sc->sim = cam_sim_alloc(twa_action, twa_poll, "twa", sc,
   device_get_unit(sc->bus_dev), sc->sim_lock,
   TW_OSLI_MAX_NUM_IOS, 1, devq);
 if (sc->sim == ((void*)0)) {
  cam_simq_free(devq);
  tw_osli_printf(sc, "error = %d",
   TW_CL_SEVERITY_ERROR_STRING,
   TW_CL_MESSAGE_SOURCE_FREEBSD_DRIVER,
   0x2101,
   "Failed to create a SIM entry",
   ENOMEM);
  return(ENOMEM);
 }




 tw_osli_dbg_dprintf(3, sc, "Calling xpt_bus_register");
 mtx_lock(sc->sim_lock);
 if (xpt_bus_register(sc->sim, sc->bus_dev, 0) != CAM_SUCCESS) {
  cam_sim_free(sc->sim, TRUE);
  sc->sim = ((void*)0);
  tw_osli_printf(sc, "error = %d",
   TW_CL_SEVERITY_ERROR_STRING,
   TW_CL_MESSAGE_SOURCE_FREEBSD_DRIVER,
   0x2102,
   "Failed to register the bus",
   ENXIO);
  mtx_unlock(sc->sim_lock);
  return(ENXIO);
 }

 tw_osli_dbg_dprintf(3, sc, "Calling xpt_create_path");
 if (xpt_create_path(&sc->path, ((void*)0),
    cam_sim_path(sc->sim),
    CAM_TARGET_WILDCARD,
    CAM_LUN_WILDCARD) != CAM_REQ_CMP) {
  xpt_bus_deregister(cam_sim_path (sc->sim));

  cam_sim_free(sc->sim, TRUE);
  tw_osli_printf(sc, "error = %d",
   TW_CL_SEVERITY_ERROR_STRING,
   TW_CL_MESSAGE_SOURCE_FREEBSD_DRIVER,
   0x2103,
   "Failed to create path",
   ENXIO);
  mtx_unlock(sc->sim_lock);
  return(ENXIO);
 }
 mtx_unlock(sc->sim_lock);

 tw_osli_dbg_dprintf(3, sc, "exiting");
 return(0);
}
