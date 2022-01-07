
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
struct TYPE_8__ {int alock; int cookie; } ;
typedef TYPE_3__ nlm4_cancargs ;


 int LOCK_CANCEL ;
 int LOCK_V4 ;
 int NLM4_CANCEL_RES ;
 scalar_t__ debug_level ;
 int getrpcaddr (struct svc_req*) ;
 int log_from_addr (char*,struct svc_req*) ;
 int transmit4_result (int ,TYPE_2__*,int ) ;
 int unlock (int *,int) ;

void *
nlm4_cancel_msg_4_svc(nlm4_cancargs *arg, struct svc_req *rqstp)
{
 static nlm4_res res;

 if (debug_level)
  log_from_addr("nlm4_cancel_msg", rqstp);

 res.cookie = arg->cookie;




 res.stat.stat = unlock(&arg->alock, LOCK_CANCEL | LOCK_V4);
 transmit4_result(NLM4_CANCEL_RES, &res, getrpcaddr(rqstp));
 return (((void*)0));
}
