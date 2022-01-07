
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct umass_softc {TYPE_1__* sc_sim; int sc_name; } ;
struct TYPE_3__ {int * softc; } ;


 int TRUE ;
 int cam_sim_free (TYPE_1__*,int ) ;
 int cam_sim_path (TYPE_1__*) ;
 int panic (char*,int ) ;
 scalar_t__ xpt_bus_deregister (int ) ;

__attribute__((used)) static void
umass_cam_detach_sim(struct umass_softc *sc)
{
 if (sc->sc_sim != ((void*)0)) {
  if (xpt_bus_deregister(cam_sim_path(sc->sc_sim))) {

   sc->sc_sim->softc = ((void*)0);
   cam_sim_free(sc->sc_sim, TRUE);
  } else {
   panic("%s: CAM layer is busy\n",
       sc->sc_name);
  }
  sc->sc_sim = ((void*)0);
 }
}
