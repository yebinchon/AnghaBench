
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct svc_req {int dummy; } ;
struct nlm4_lockargs {int state; int reclaim; int exclusive; int block; int cookie; int alock; } ;
struct TYPE_6__ {int stat; } ;
struct TYPE_7__ {TYPE_1__ stat; int cookie; } ;
typedef TYPE_2__ nlm_res ;
struct TYPE_8__ {int cookie; int state; int reclaim; int exclusive; int block; int alock; } ;
typedef TYPE_3__ nlm_lockargs ;


 int LOCK_MON ;
 scalar_t__ debug_level ;
 int getlock (struct nlm4_lockargs*,struct svc_req*,int ) ;
 int log_from_addr (char*,struct svc_req*) ;
 int nlmtonlm4 (int *,int *) ;

nlm_res *
nlm_lock_1_svc(nlm_lockargs *arg, struct svc_req *rqstp)
{
 static nlm_res res;
 struct nlm4_lockargs arg4;
 nlmtonlm4(&arg->alock, &arg4.alock);
 arg4.cookie = arg->cookie;
 arg4.block = arg->block;
 arg4.exclusive = arg->exclusive;
 arg4.reclaim = arg->reclaim;
 arg4.state = arg->state;

 if (debug_level)
  log_from_addr("nlm_lock", rqstp);


 res.cookie = arg->cookie;

 res.stat.stat = getlock(&arg4, rqstp, LOCK_MON);
 return (&res);
}
