
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tws_softc {int sim_lock; scalar_t__ sim; scalar_t__ path; } ;


 int TRUE ;
 int TWS_TRACE_DEBUG (struct tws_softc*,char*,int ,int ) ;
 int cam_sim_free (scalar_t__,int ) ;
 int cam_sim_path (scalar_t__) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int xpt_bus_deregister (int ) ;
 int xpt_free_path (scalar_t__) ;

void
tws_cam_detach(struct tws_softc *sc)
{
    TWS_TRACE_DEBUG(sc, "entry", 0, 0);
    mtx_lock(&sc->sim_lock);
    if (sc->path)
        xpt_free_path(sc->path);
    if (sc->sim) {
        xpt_bus_deregister(cam_sim_path(sc->sim));
        cam_sim_free(sc->sim, TRUE);
    }
    mtx_unlock(&sc->sim_lock);
}
