
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct svc_req {int dummy; } ;
struct TYPE_6__ {int stat; } ;
struct TYPE_7__ {TYPE_1__ stat; int cookie; } ;
typedef TYPE_2__ nlm4_res ;
struct TYPE_8__ {int cookie; } ;
typedef TYPE_3__ nlm4_lockargs ;


 scalar_t__ debug_level ;
 int log_from_addr (char*,struct svc_req*) ;
 int nlm4_granted ;

nlm4_res *
nlm4_nm_lock_4_svc(nlm4_lockargs *arg, struct svc_req *rqstp)
{
 static nlm4_res res;

 if (debug_level)
  log_from_addr("nlm4_nm_lock", rqstp);


 res.cookie = arg->cookie;
 res.stat.stat = nlm4_granted;
 return (&res);
}
