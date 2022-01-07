
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct svc_req {int dummy; } ;
struct TYPE_4__ {int stat; } ;
struct TYPE_5__ {TYPE_1__ stat; int cookie; } ;
typedef TYPE_2__ nlm_res ;


 int NLM_VERS ;
 scalar_t__ debug_level ;
 int lock_answer (int,int *,int ,int *,int ) ;
 int log_from_addr (char*,struct svc_req*) ;

void *
nlm_unlock_res_1_svc(nlm_res *arg, struct svc_req *rqstp)
{
 if (debug_level)
  log_from_addr("nlm_unlock_res", rqstp);

 lock_answer(-1, &arg->cookie, arg->stat.stat, ((void*)0), NLM_VERS);

 return (((void*)0));
}
