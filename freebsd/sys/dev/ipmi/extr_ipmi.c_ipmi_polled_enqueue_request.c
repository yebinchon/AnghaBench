
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipmi_softc {int ipmi_request_added; int ipmi_pending_requests; } ;
struct ipmi_request {int dummy; } ;


 int IPMI_LOCK_ASSERT (struct ipmi_softc*) ;
 int TAILQ_INSERT_TAIL (int *,struct ipmi_request*,int ) ;
 int cv_signal (int *) ;
 int ir_link ;

int
ipmi_polled_enqueue_request(struct ipmi_softc *sc, struct ipmi_request *req)
{

 IPMI_LOCK_ASSERT(sc);

 TAILQ_INSERT_TAIL(&sc->ipmi_pending_requests, req, ir_link);
 cv_signal(&sc->ipmi_request_added);
 return (0);
}
