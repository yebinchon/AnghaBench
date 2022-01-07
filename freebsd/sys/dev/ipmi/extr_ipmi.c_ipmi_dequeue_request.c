
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipmi_softc {int ipmi_pending_requests; scalar_t__ ipmi_detaching; int ipmi_requests_lock; int ipmi_request_added; } ;
struct ipmi_request {int dummy; } ;


 int IPMI_LOCK_ASSERT (struct ipmi_softc*) ;
 scalar_t__ TAILQ_EMPTY (int *) ;
 struct ipmi_request* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct ipmi_request*,int ) ;
 int cv_wait (int *,int *) ;
 int ir_link ;

struct ipmi_request *
ipmi_dequeue_request(struct ipmi_softc *sc)
{
 struct ipmi_request *req;

 IPMI_LOCK_ASSERT(sc);

 while (!sc->ipmi_detaching && TAILQ_EMPTY(&sc->ipmi_pending_requests))
  cv_wait(&sc->ipmi_request_added, &sc->ipmi_requests_lock);
 if (sc->ipmi_detaching)
  return (((void*)0));

 req = TAILQ_FIRST(&sc->ipmi_pending_requests);
 TAILQ_REMOVE(&sc->ipmi_pending_requests, req, ir_link);
 return (req);
}
