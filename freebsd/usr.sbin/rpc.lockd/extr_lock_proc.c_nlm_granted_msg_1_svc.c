
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
typedef TYPE_3__ nlm_testargs ;
struct TYPE_7__ {int stat; } ;
struct TYPE_10__ {TYPE_1__ stat; int cookie; } ;
typedef TYPE_4__ nlm_res ;


 int NLM_GRANTED_RES ;
 int NLM_VERS ;
 scalar_t__ debug_level ;
 int getrpcaddr (struct svc_req*) ;
 scalar_t__ lock_answer (int ,int *,int ,int *,int ) ;
 int log_from_addr (char*,struct svc_req*) ;
 int nlm_denied ;
 int nlm_granted ;
 int transmit_result (int ,TYPE_4__*,int ) ;

void *
nlm_granted_msg_1_svc(nlm_testargs *arg, struct svc_req *rqstp)
{
 static nlm_res res;

 if (debug_level)
  log_from_addr("nlm_granted_msg", rqstp);

 res.cookie = arg->cookie;
 res.stat.stat = lock_answer(arg->alock.svid, &arg->cookie,
  nlm_granted, ((void*)0), NLM_VERS) == 0 ?
  nlm_granted : nlm_denied;

 transmit_result(NLM_GRANTED_RES, &res, getrpcaddr(rqstp));
 return (((void*)0));
}
