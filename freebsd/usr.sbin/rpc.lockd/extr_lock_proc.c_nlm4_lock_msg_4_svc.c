
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct svc_req {int dummy; } ;
struct TYPE_7__ {int stat; } ;
struct TYPE_8__ {TYPE_1__ stat; int cookie; } ;
typedef TYPE_2__ nlm4_res ;
struct TYPE_9__ {int cookie; } ;
typedef TYPE_3__ nlm4_lockargs ;


 int LOCK_ASYNC ;
 int LOCK_MON ;
 int LOCK_V4 ;
 int NLM4_LOCK_RES ;
 scalar_t__ debug_level ;
 int getlock (TYPE_3__*,struct svc_req*,int) ;
 int getrpcaddr (struct svc_req*) ;
 int log_from_addr (char*,struct svc_req*) ;
 int transmit4_result (int ,TYPE_2__*,int ) ;

void *
nlm4_lock_msg_4_svc(nlm4_lockargs *arg, struct svc_req *rqstp)
{
 static nlm4_res res;

 if (debug_level)
  log_from_addr("nlm4_lock_msg", rqstp);

 res.cookie = arg->cookie;
 res.stat.stat = getlock(arg, rqstp, LOCK_MON | LOCK_ASYNC | LOCK_V4);
 transmit4_result(NLM4_LOCK_RES, &res, getrpcaddr(rqstp));

 return (((void*)0));
}
