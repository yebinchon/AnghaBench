
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct umass_softc {int sc_mtx; int sc_unit; int sc_dev; int * sc_sim; } ;
struct cam_devq {int dummy; } ;


 scalar_t__ CAM_SUCCESS ;
 int DEVNAME_SIM ;
 int ENOMEM ;
 int * cam_sim_alloc (int *,int *,int ,struct umass_softc*,int ,int *,int,int ,struct cam_devq*) ;
 struct cam_devq* cam_simq_alloc (int) ;
 int cam_simq_free (struct cam_devq*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int umass_cam_action ;
 int umass_cam_poll ;
 scalar_t__ xpt_bus_register (int *,int ,int ) ;

__attribute__((used)) static int
umass_cam_attach_sim(struct umass_softc *sc)
{
 struct cam_devq *devq;
 devq = cam_simq_alloc(1 );
 if (devq == ((void*)0)) {
  return (ENOMEM);
 }
 sc->sc_sim = cam_sim_alloc
     (&umass_cam_action, &umass_cam_poll,
     DEVNAME_SIM,
     sc ,
     sc->sc_unit ,
     &sc->sc_mtx ,
     1 ,
     0 ,
     devq);

 if (sc->sc_sim == ((void*)0)) {
  cam_simq_free(devq);
  return (ENOMEM);
 }

 mtx_lock(&sc->sc_mtx);

 if (xpt_bus_register(sc->sc_sim, sc->sc_dev,
     sc->sc_unit) != CAM_SUCCESS) {
  mtx_unlock(&sc->sc_mtx);
  return (ENOMEM);
 }
 mtx_unlock(&sc->sc_mtx);

 return (0);
}
