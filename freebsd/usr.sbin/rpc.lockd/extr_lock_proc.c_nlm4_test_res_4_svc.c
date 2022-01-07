
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct svc_req {int dummy; } ;
struct TYPE_6__ {int svid; } ;
struct TYPE_7__ {TYPE_1__ holder; } ;
struct TYPE_8__ {TYPE_2__ nlm4_testrply_u; int stat; } ;
struct TYPE_9__ {TYPE_3__ stat; int cookie; } ;
typedef TYPE_4__ nlm4_testres ;


 int NLM_VERS4 ;
 scalar_t__ debug_level ;
 int lock_answer (int,int *,int ,int*,int ) ;
 int log_from_addr (char*,struct svc_req*) ;

void *
nlm4_test_res_4_svc(nlm4_testres *arg, struct svc_req *rqstp)
{
 if (debug_level)
  log_from_addr("nlm4_test_res", rqstp);

 (void)lock_answer(-1, &arg->cookie, arg->stat.stat,
  (int *)&arg->stat.nlm4_testrply_u.holder.svid,
  NLM_VERS4);
 return (((void*)0));
}
