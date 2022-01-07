
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twa_softc {int sim_lock; scalar_t__ sim; scalar_t__ path; } ;
typedef int TW_VOID ;


 int TRUE ;
 int cam_sim_free (scalar_t__,int ) ;
 int cam_sim_path (scalar_t__) ;
 int mtx_destroy (int ) ;
 int mtx_lock (int ) ;
 int tw_osli_dbg_dprintf (int,struct twa_softc*,char*) ;
 int xpt_bus_deregister (int ) ;
 int xpt_free_path (scalar_t__) ;

TW_VOID
tw_osli_cam_detach(struct twa_softc *sc)
{
 tw_osli_dbg_dprintf(3, sc, "entered");

 mtx_lock(sc->sim_lock);

 if (sc->path)
  xpt_free_path(sc->path);
 if (sc->sim) {
  xpt_bus_deregister(cam_sim_path(sc->sim));

  cam_sim_free(sc->sim, TRUE);
 }

 mtx_destroy(sc->sim_lock);
}
