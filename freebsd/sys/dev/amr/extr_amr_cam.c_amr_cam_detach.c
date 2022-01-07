
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amr_softc {int amr_maxchan; int * amr_cam_devq; int amr_list_lock; int ** amr_cam_sim; } ;
typedef int device_t ;


 int FALSE ;
 int cam_sim_free (int *,int ) ;
 int cam_sim_path (int *) ;
 int cam_simq_free (int *) ;
 struct amr_softc* device_get_softc (int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int xpt_bus_deregister (int ) ;

__attribute__((used)) static int
amr_cam_detach(device_t dev)
{
 struct amr_softc *sc;
 int chn;

 sc = device_get_softc(dev);
 mtx_lock(&sc->amr_list_lock);
 for (chn = 0; chn < sc->amr_maxchan; chn++) {



  if (sc->amr_cam_sim[chn] != ((void*)0)) {
   xpt_bus_deregister(cam_sim_path(sc->amr_cam_sim[chn]));
   cam_sim_free(sc->amr_cam_sim[chn], FALSE);
  }
 }
 mtx_unlock(&sc->amr_list_lock);


 if (sc->amr_cam_devq != ((void*)0))
  cam_simq_free(sc->amr_cam_devq);

 return (0);
}
