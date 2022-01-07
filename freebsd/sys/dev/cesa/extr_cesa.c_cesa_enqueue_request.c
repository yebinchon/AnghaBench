
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cesa_softc {int sc_ready_requests; } ;
struct cesa_request {int dummy; } ;


 int CESA_LOCK (struct cesa_softc*,int ) ;
 int CESA_UNLOCK (struct cesa_softc*,int ) ;
 int STAILQ_INSERT_TAIL (int *,struct cesa_request*,int ) ;
 int cr_stq ;
 int requests ;

__attribute__((used)) static void
cesa_enqueue_request(struct cesa_softc *sc, struct cesa_request *cr)
{

 CESA_LOCK(sc, requests);
 STAILQ_INSERT_TAIL(&sc->sc_ready_requests, cr, cr_stq);
 CESA_UNLOCK(sc, requests);
}
