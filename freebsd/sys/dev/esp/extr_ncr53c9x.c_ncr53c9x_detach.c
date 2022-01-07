
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ncr53c9x_softc {int sc_ntarg; struct ncr53c9x_linfo* sc_omess; scalar_t__ sc_omess_self; struct ncr53c9x_linfo* sc_imess; scalar_t__ sc_imess_self; struct ncr53c9x_linfo* sc_tinfo; struct ncr53c9x_linfo* ecb_array; int sc_sim; int sc_path; int sc_watchdog; } ;
struct ncr53c9x_linfo {int luns; } ;


 int CAM_REQ_ABORTED ;
 struct ncr53c9x_linfo* LIST_FIRST (int *) ;
 struct ncr53c9x_linfo* LIST_NEXT (struct ncr53c9x_linfo*,int ) ;
 int M_DEVBUF ;
 int NCR_LOCK (struct ncr53c9x_softc*) ;
 int NCR_UNLOCK (struct ncr53c9x_softc*) ;
 int TRUE ;
 int callout_drain (int *) ;
 int cam_sim_free (int ,int ) ;
 int cam_sim_path (int ) ;
 int free (struct ncr53c9x_linfo*,int ) ;
 int link ;
 int ncr53c9x_async ;
 int ncr53c9x_clear (struct ncr53c9x_softc*,int ) ;
 int xpt_bus_deregister (int ) ;
 int xpt_free_path (int ) ;
 int xpt_register_async (int ,int ,int ,int ) ;

int
ncr53c9x_detach(struct ncr53c9x_softc *sc)
{
 struct ncr53c9x_linfo *li, *nextli;
 int t;

 callout_drain(&sc->sc_watchdog);

 NCR_LOCK(sc);

 if (sc->sc_tinfo) {

  ncr53c9x_clear(sc, CAM_REQ_ABORTED);


  for (t = 0; t < sc->sc_ntarg; t++) {
   for (li = LIST_FIRST(&sc->sc_tinfo[t].luns); li;
       li = nextli) {
    nextli = LIST_NEXT(li, link);
    free(li, M_DEVBUF);
   }
  }
 }

 xpt_register_async(0, ncr53c9x_async, sc->sc_sim, sc->sc_path);
 xpt_free_path(sc->sc_path);
 xpt_bus_deregister(cam_sim_path(sc->sc_sim));
 cam_sim_free(sc->sc_sim, TRUE);

 NCR_UNLOCK(sc);

 free(sc->ecb_array, M_DEVBUF);
 free(sc->sc_tinfo, M_DEVBUF);
 if (sc->sc_imess_self)
  free(sc->sc_imess, M_DEVBUF);
 if (sc->sc_omess_self)
  free(sc->sc_omess, M_DEVBUF);

 return (0);
}
