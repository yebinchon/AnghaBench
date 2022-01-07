
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct svc_req {int dummy; } ;
struct TYPE_5__ {int sequence; int stat; int cookie; } ;
typedef TYPE_1__ nlm_shareres ;
struct TYPE_6__ {int cookie; } ;
typedef TYPE_2__ nlm_shareargs ;


 scalar_t__ debug_level ;
 int log_from_addr (char*,struct svc_req*) ;
 int nlm_granted ;

nlm_shareres *
nlm_unshare_3_svc(nlm_shareargs *arg, struct svc_req *rqstp)
{
 static nlm_shareres res;

 if (debug_level)
  log_from_addr("nlm_unshare", rqstp);

 res.cookie = arg->cookie;
 res.stat = nlm_granted;
 res.sequence = 1234356;
 return (&res);
}
