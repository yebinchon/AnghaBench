
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct svc_req {int dummy; } ;
struct nlm_lockargs {int state; int reclaim; int alock; int exclusive; int block; int cookie; } ;
typedef int nlm_res ;
typedef int nlm4_res ;
struct TYPE_3__ {int state; int reclaim; int alock; int exclusive; int block; int cookie; } ;
typedef TYPE_1__ nlm4_lockargs ;
typedef scalar_t__ bool_t ;


 scalar_t__ nlm4_lock_4_svc (TYPE_1__*,int *,struct svc_req*) ;
 int nlm_convert_to_nlm4_lock (int *,int *) ;
 int nlm_convert_to_nlm_res (int *,int *) ;

bool_t
nlm_lock_1_svc(struct nlm_lockargs *argp, nlm_res *result, struct svc_req *rqstp)
{
 bool_t retval;
 nlm4_lockargs args4;
 nlm4_res res4;

 args4.cookie = argp->cookie;
 args4.block = argp->block;
 args4.exclusive = argp->exclusive;
 nlm_convert_to_nlm4_lock(&args4.alock, &argp->alock);
 args4.reclaim = argp->reclaim;
 args4.state = argp->state;

 retval = nlm4_lock_4_svc(&args4, &res4, rqstp);
 if (retval)
  nlm_convert_to_nlm_res(result, &res4);

 return (retval);
}
