
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct svc_req {int dummy; } ;
struct nlm_unlockargs {int alock; int cookie; } ;
typedef int nlm_res ;
struct TYPE_3__ {int alock; int cookie; } ;
typedef TYPE_1__ nlm4_unlockargs ;
typedef int nlm4_res ;
typedef scalar_t__ bool_t ;


 scalar_t__ nlm4_unlock_4_svc (TYPE_1__*,int *,struct svc_req*) ;
 int nlm_convert_to_nlm4_lock (int *,int *) ;
 int nlm_convert_to_nlm_res (int *,int *) ;

bool_t
nlm_unlock_1_svc(struct nlm_unlockargs *argp, nlm_res *result, struct svc_req *rqstp)
{
 bool_t retval;
 nlm4_unlockargs args4;
 nlm4_res res4;

 args4.cookie = argp->cookie;
 nlm_convert_to_nlm4_lock(&args4.alock, &argp->alock);

 retval = nlm4_unlock_4_svc(&args4, &res4, rqstp);
 if (retval)
  nlm_convert_to_nlm_res(result, &res4);

 return (retval);
}
