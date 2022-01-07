
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tws_softc {int sim_lock; int * sim; int path; int tws_dev; } ;
struct cam_devq {int dummy; } ;


 int CAM_LUN_WILDCARD ;
 scalar_t__ CAM_REQ_CMP ;
 int CAM_SIMQ_ALLOC ;
 int CAM_SIM_ALLOC ;
 scalar_t__ CAM_SUCCESS ;
 int CAM_TARGET_WILDCARD ;
 int ENOMEM ;
 int ENXIO ;
 int TRUE ;
 int TWS_RESERVED_REQS ;
 int TWS_TRACE_DEBUG (struct tws_softc*,char*,int,...) ;
 int TWS_XPT_BUS_REGISTER ;
 int TWS_XPT_CREATE_PATH ;
 int * cam_sim_alloc (int ,int ,char*,struct tws_softc*,int ,int *,int,int,struct cam_devq*) ;
 int cam_sim_free (int *,int ) ;
 int cam_sim_path (int *) ;
 struct cam_devq* cam_simq_alloc (int) ;
 int cam_simq_free (struct cam_devq*) ;
 int device_get_unit (int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int tws_action ;
 int tws_cam_depth ;
 int tws_log (struct tws_softc*,int ) ;
 int tws_poll ;
 int tws_queue_depth ;
 int xpt_bus_deregister (int ) ;
 scalar_t__ xpt_bus_register (int *,int ,int ) ;
 scalar_t__ xpt_create_path (int *,int *,int ,int ,int ) ;

int
tws_cam_attach(struct tws_softc *sc)
{
    struct cam_devq *devq;

    TWS_TRACE_DEBUG(sc, "entry", 0, sc);






    if ( tws_cam_depth < 1 )
        tws_cam_depth = 1;
    if ( tws_cam_depth > (tws_queue_depth - TWS_RESERVED_REQS) )
        tws_cam_depth = tws_queue_depth - TWS_RESERVED_REQS;

    TWS_TRACE_DEBUG(sc, "depths,ctlr,cam", tws_queue_depth, tws_cam_depth);

    if ((devq = cam_simq_alloc(tws_cam_depth)) == ((void*)0)) {
        tws_log(sc, CAM_SIMQ_ALLOC);
        return(ENOMEM);
    }







    sc->sim = cam_sim_alloc(tws_action, tws_poll, "tws", sc,
                      device_get_unit(sc->tws_dev),
                      &sc->sim_lock,
                      tws_cam_depth, 1, devq);

    if (sc->sim == ((void*)0)) {
        cam_simq_free(devq);
        tws_log(sc, CAM_SIM_ALLOC);
    }

    mtx_lock(&sc->sim_lock);
    if (xpt_bus_register(sc->sim,
                         sc->tws_dev,
                         0) != CAM_SUCCESS) {
        cam_sim_free(sc->sim, TRUE);
        sc->sim = ((void*)0);
        mtx_unlock(&sc->sim_lock);
        tws_log(sc, TWS_XPT_BUS_REGISTER);
        return(ENXIO);
    }
    if (xpt_create_path(&sc->path, ((void*)0), cam_sim_path(sc->sim),
                         CAM_TARGET_WILDCARD,
                         CAM_LUN_WILDCARD) != CAM_REQ_CMP) {
        xpt_bus_deregister(cam_sim_path(sc->sim));

        cam_sim_free(sc->sim, TRUE);
        tws_log(sc, TWS_XPT_CREATE_PATH);
        mtx_unlock(&sc->sim_lock);
        return(ENXIO);
    }
    mtx_unlock(&sc->sim_lock);

    return(0);
}
