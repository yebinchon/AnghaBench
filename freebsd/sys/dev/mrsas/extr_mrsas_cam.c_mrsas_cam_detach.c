
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mrsas_softc {int sim_lock; scalar_t__ sim_1; scalar_t__ path_1; scalar_t__ sim_0; scalar_t__ path_0; int * ev_tq; } ;


 int FALSE ;
 int TRUE ;
 int cam_sim_free (scalar_t__,int ) ;
 int cam_sim_path (scalar_t__) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int taskqueue_free (int *) ;
 int xpt_bus_deregister (int ) ;
 int xpt_free_path (scalar_t__) ;

void
mrsas_cam_detach(struct mrsas_softc *sc)
{
 if (sc->ev_tq != ((void*)0))
  taskqueue_free(sc->ev_tq);
 mtx_lock(&sc->sim_lock);
 if (sc->path_0)
  xpt_free_path(sc->path_0);
 if (sc->sim_0) {
  xpt_bus_deregister(cam_sim_path(sc->sim_0));
  cam_sim_free(sc->sim_0, FALSE);
 }
 if (sc->path_1)
  xpt_free_path(sc->path_1);
 if (sc->sim_1) {
  xpt_bus_deregister(cam_sim_path(sc->sim_1));
  cam_sim_free(sc->sim_1, TRUE);
 }
 mtx_unlock(&sc->sim_lock);
}
