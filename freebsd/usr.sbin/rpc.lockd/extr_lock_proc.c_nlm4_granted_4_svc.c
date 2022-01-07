
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct svc_req {int dummy; } ;
struct TYPE_8__ {int svid; } ;
struct TYPE_9__ {int cookie; TYPE_2__ alock; } ;
typedef TYPE_3__ nlm4_testargs ;
struct TYPE_7__ {int stat; } ;
struct TYPE_10__ {int cookie; TYPE_1__ stat; } ;
typedef TYPE_4__ nlm4_res ;


 int NLM_VERS4 ;
 scalar_t__ debug_level ;
 scalar_t__ lock_answer (int ,int *,int ,int *,int ) ;
 int log_from_addr (char*,struct svc_req*) ;
 int nlm4_denied ;
 int nlm4_granted ;

nlm4_res *
nlm4_granted_4_svc(nlm4_testargs *arg, struct svc_req *rqstp)
{
 static nlm4_res res;

 if (debug_level)
  log_from_addr("nlm4_granted", rqstp);

 res.stat.stat = lock_answer(arg->alock.svid, &arg->cookie,
  nlm4_granted, ((void*)0), NLM_VERS4) == 0 ?
  nlm4_granted : nlm4_denied;


 res.cookie = arg->cookie;

 return (&res);
}
