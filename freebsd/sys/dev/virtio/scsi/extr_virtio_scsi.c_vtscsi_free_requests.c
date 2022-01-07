
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtscsi_softc {scalar_t__ vtscsi_nrequests; } ;
struct vtscsi_request {int vsr_callout; } ;


 int KASSERT (int,char*) ;
 int M_DEVBUF ;
 scalar_t__ callout_active (int *) ;
 int free (struct vtscsi_request*,int ) ;
 struct vtscsi_request* vtscsi_dequeue_request (struct vtscsi_softc*) ;

__attribute__((used)) static void
vtscsi_free_requests(struct vtscsi_softc *sc)
{
 struct vtscsi_request *req;

 while ((req = vtscsi_dequeue_request(sc)) != ((void*)0)) {
  KASSERT(callout_active(&req->vsr_callout) == 0,
      ("request callout still active"));

  sc->vtscsi_nrequests--;
  free(req, M_DEVBUF);
 }

 KASSERT(sc->vtscsi_nrequests == 0, ("leaked requests: %d",
     sc->vtscsi_nrequests));
}
