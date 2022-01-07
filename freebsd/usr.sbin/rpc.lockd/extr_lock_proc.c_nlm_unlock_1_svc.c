
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct svc_req {int dummy; } ;
struct nlm4_lock {int dummy; } ;
struct TYPE_7__ {int cookie; int alock; } ;
typedef TYPE_2__ nlm_unlockargs ;
struct TYPE_6__ {int stat; } ;
struct TYPE_8__ {int cookie; TYPE_1__ stat; } ;
typedef TYPE_3__ nlm_res ;


 scalar_t__ debug_level ;
 int log_from_addr (char*,struct svc_req*) ;
 int nlmtonlm4 (int *,struct nlm4_lock*) ;
 int unlock (struct nlm4_lock*,int ) ;

nlm_res *
nlm_unlock_1_svc(nlm_unlockargs *arg, struct svc_req *rqstp)
{
 static nlm_res res;
 struct nlm4_lock arg4;

 nlmtonlm4(&arg->alock, &arg4);

 if (debug_level)
  log_from_addr("nlm_unlock", rqstp);

 res.stat.stat = unlock(&arg4, 0);
 res.cookie = arg->cookie;

 return (&res);
}
