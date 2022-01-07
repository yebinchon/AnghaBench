
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtscsi_softc {int * vtscsi_sim; int * vtscsi_path; } ;


 int VTSCSI_LOCK (struct vtscsi_softc*) ;
 int VTSCSI_UNLOCK (struct vtscsi_softc*) ;
 int cam_sim_free (int *,int) ;
 int cam_sim_path (int *) ;
 int vtscsi_deregister_async (struct vtscsi_softc*) ;
 int xpt_bus_deregister (int ) ;
 int xpt_free_path (int *) ;

__attribute__((used)) static void
vtscsi_free_cam(struct vtscsi_softc *sc)
{

 VTSCSI_LOCK(sc);

 if (sc->vtscsi_path != ((void*)0)) {
  vtscsi_deregister_async(sc);

  xpt_free_path(sc->vtscsi_path);
  sc->vtscsi_path = ((void*)0);

  xpt_bus_deregister(cam_sim_path(sc->vtscsi_sim));
 }

 if (sc->vtscsi_sim != ((void*)0)) {
  cam_sim_free(sc->vtscsi_sim, 1);
  sc->vtscsi_sim = ((void*)0);
 }

 VTSCSI_UNLOCK(sc);
}
