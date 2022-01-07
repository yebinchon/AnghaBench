
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ciss_softc {scalar_t__ ciss_perf; } ;
struct ciss_request {int cr_flags; struct ciss_softc* cr_sc; } ;
typedef int cr_qhead_t ;


 int CISS_REQ_POLL ;
 int DELAY (int) ;
 int EWOULDBLOCK ;
 int STAILQ_INIT (int *) ;
 int ciss_complete (struct ciss_softc*,int *) ;
 int ciss_done (struct ciss_softc*,int *) ;
 int ciss_perf_done (struct ciss_softc*,int *) ;
 int ciss_start (struct ciss_request*) ;
 int debug_called (int) ;

__attribute__((used)) static int
ciss_poll_request(struct ciss_request *cr, int timeout)
{
    cr_qhead_t qh;
    struct ciss_softc *sc;
    int error;

    debug_called(2);

    STAILQ_INIT(&qh);
    sc = cr->cr_sc;
    cr->cr_flags |= CISS_REQ_POLL;
    if ((error = ciss_start(cr)) != 0)
 return(error);

    do {
 if (sc->ciss_perf)
     ciss_perf_done(sc, &qh);
 else
     ciss_done(sc, &qh);
 ciss_complete(sc, &qh);
 if (!(cr->cr_flags & CISS_REQ_POLL))
     return(0);
 DELAY(1000);
    } while (timeout-- >= 0);
    return(EWOULDBLOCK);
}
