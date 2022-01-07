
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mly_softc {int mly_cam_channels; int * mly_cam_devq; int ** mly_cam_sim; } ;


 int MLY_LOCK (struct mly_softc*) ;
 int MLY_UNLOCK (struct mly_softc*) ;
 int cam_sim_free (int *,int ) ;
 int cam_sim_path (int *) ;
 int cam_simq_free (int *) ;
 int debug_called (int) ;
 int xpt_bus_deregister (int ) ;

__attribute__((used)) static void
mly_cam_detach(struct mly_softc *sc)
{
    int i;

    debug_called(1);

    MLY_LOCK(sc);
    for (i = 0; i < sc->mly_cam_channels; i++) {
 if (sc->mly_cam_sim[i] != ((void*)0)) {
     xpt_bus_deregister(cam_sim_path(sc->mly_cam_sim[i]));
     cam_sim_free(sc->mly_cam_sim[i], 0);
 }
    }
    MLY_UNLOCK(sc);
    if (sc->mly_cam_devq != ((void*)0))
 cam_simq_free(sc->mly_cam_devq);
}
