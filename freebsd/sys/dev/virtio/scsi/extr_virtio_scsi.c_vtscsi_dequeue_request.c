
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dequeue_no_requests; } ;
struct vtscsi_softc {TYPE_1__ vtscsi_stats; int vtscsi_req_free; } ;
struct vtscsi_request {int vsr_state; } ;


 struct vtscsi_request* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct vtscsi_request*,int ) ;
 int VTSCSI_REQ_STATE_INUSE ;
 int VTSCSI_TRACE ;
 int vsr_link ;
 int vtscsi_dprintf (struct vtscsi_softc*,int ,char*,struct vtscsi_request*) ;

__attribute__((used)) static struct vtscsi_request *
vtscsi_dequeue_request(struct vtscsi_softc *sc)
{
 struct vtscsi_request *req;

 req = TAILQ_FIRST(&sc->vtscsi_req_free);
 if (req != ((void*)0)) {
  req->vsr_state = VTSCSI_REQ_STATE_INUSE;
  TAILQ_REMOVE(&sc->vtscsi_req_free, req, vsr_link);
 } else
  sc->vtscsi_stats.dequeue_no_requests++;

 vtscsi_dprintf(sc, VTSCSI_TRACE, "req=%p\n", req);

 return (req);
}
