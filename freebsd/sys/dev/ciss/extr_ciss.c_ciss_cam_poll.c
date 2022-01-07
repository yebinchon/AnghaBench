
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ciss_softc {scalar_t__ ciss_perf; } ;
struct cam_sim {int dummy; } ;
typedef int cr_qhead_t ;


 int STAILQ_INIT (int *) ;
 struct ciss_softc* cam_sim_softc (struct cam_sim*) ;
 int ciss_complete (struct ciss_softc*,int *) ;
 int ciss_done (struct ciss_softc*,int *) ;
 int ciss_perf_done (struct ciss_softc*,int *) ;
 int debug_called (int) ;

__attribute__((used)) static void
ciss_cam_poll(struct cam_sim *sim)
{
    cr_qhead_t qh;
    struct ciss_softc *sc = cam_sim_softc(sim);

    debug_called(2);

    STAILQ_INIT(&qh);
    if (sc->ciss_perf)
 ciss_perf_done(sc, &qh);
    else
 ciss_done(sc, &qh);
    ciss_complete(sc, &qh);
}
