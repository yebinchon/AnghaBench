
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct svc_req {int dummy; } ;
struct nlm4_lock {int dummy; } ;
struct TYPE_6__ {int stat; } ;
struct TYPE_7__ {TYPE_1__ stat; int cookie; } ;
typedef TYPE_2__ nlm_res ;
struct TYPE_8__ {int cookie; int alock; } ;
typedef TYPE_3__ nlm_cancargs ;


 int LOCK_CANCEL ;
 int NLM_CANCEL_RES ;
 scalar_t__ debug_level ;
 int getrpcaddr (struct svc_req*) ;
 int log_from_addr (char*,struct svc_req*) ;
 int nlmtonlm4 (int *,struct nlm4_lock*) ;
 int transmit_result (int ,TYPE_2__*,int ) ;
 int unlock (struct nlm4_lock*,int ) ;

void *
nlm_cancel_msg_1_svc(nlm_cancargs *arg, struct svc_req *rqstp)
{
 static nlm_res res;
 struct nlm4_lock arg4;

 nlmtonlm4(&arg->alock, &arg4);

 if (debug_level)
  log_from_addr("nlm_cancel_msg", rqstp);

 res.cookie = arg->cookie;




 res.stat.stat = unlock(&arg4, LOCK_CANCEL);
 transmit_result(NLM_CANCEL_RES, &res, getrpcaddr(rqstp));
 return (((void*)0));
}
