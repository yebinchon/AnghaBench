
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipmi_softc {int dummy; } ;
struct ipmi_request {struct ipmi_device* ir_owner; } ;
struct ipmi_device {struct ipmi_request ipmi_requests; scalar_t__ ipmi_closing; int ipmi_select; int ipmi_completed_requests; } ;


 int IPMI_LOCK_ASSERT (struct ipmi_softc*) ;
 int TAILQ_INSERT_TAIL (int *,struct ipmi_request*,int ) ;
 int ir_link ;
 int selwakeup (int *) ;
 int wakeup (struct ipmi_request*) ;

void
ipmi_complete_request(struct ipmi_softc *sc, struct ipmi_request *req)
{
 struct ipmi_device *dev;

 IPMI_LOCK_ASSERT(sc);





 if (req->ir_owner == ((void*)0))
  wakeup(req);
 else {
  dev = req->ir_owner;
  TAILQ_INSERT_TAIL(&dev->ipmi_completed_requests, req, ir_link);
  selwakeup(&dev->ipmi_select);
  if (dev->ipmi_closing)
   wakeup(&dev->ipmi_requests);
 }
}
