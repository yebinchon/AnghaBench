
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipmi_request {int dummy; } ;
struct ipmi_device {int ipmi_requests; int ipmi_completed_requests; } ;


 int TAILQ_EMPTY (int *) ;
 struct ipmi_request* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct ipmi_request*,int ) ;
 int ipmi_free_request (struct ipmi_request*) ;
 int ir_link ;

__attribute__((used)) static void
ipmi_purge_completed_requests(struct ipmi_device *dev)
{
 struct ipmi_request *req;

 while (!TAILQ_EMPTY(&dev->ipmi_completed_requests)) {
  req = TAILQ_FIRST(&dev->ipmi_completed_requests);
  TAILQ_REMOVE(&dev->ipmi_completed_requests, req, ir_link);
  dev->ipmi_requests--;
  ipmi_free_request(req);
 }
}
