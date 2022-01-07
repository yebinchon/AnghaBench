
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_req {int dummy; } ;
struct nlm_sm_status {int dummy; } ;
typedef int bool_t ;


 int TRUE ;
 int nlm_sm_notify (struct nlm_sm_status*) ;

bool_t
nlm_sm_notify_0_svc(struct nlm_sm_status *argp, void *result, struct svc_req *rqstp)
{
 nlm_sm_notify(argp);

 return (TRUE);
}
