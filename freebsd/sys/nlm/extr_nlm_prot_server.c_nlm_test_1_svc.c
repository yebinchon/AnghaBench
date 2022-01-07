
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct svc_req {int dummy; } ;
struct nlm_testargs {int alock; int exclusive; int cookie; } ;
struct TYPE_11__ {int holder; } ;
struct TYPE_12__ {TYPE_1__ nlm_testrply_u; int stat; } ;
struct TYPE_15__ {TYPE_2__ stat; int cookie; } ;
typedef TYPE_5__ nlm_testres ;
struct TYPE_13__ {int holder; } ;
struct TYPE_14__ {TYPE_3__ nlm4_testrply_u; int stat; } ;
struct TYPE_16__ {TYPE_4__ stat; int cookie; } ;
typedef TYPE_6__ nlm4_testres ;
struct TYPE_17__ {int alock; int exclusive; int cookie; } ;
typedef TYPE_7__ nlm4_testargs ;
typedef scalar_t__ bool_t ;


 scalar_t__ nlm4_test_4_svc (TYPE_7__*,TYPE_6__*,struct svc_req*) ;
 int nlm_convert_to_nlm4_lock (int *,int *) ;
 int nlm_convert_to_nlm_holder (int *,int *) ;
 int nlm_convert_to_nlm_stats (int ) ;
 int nlm_denied ;

bool_t
nlm_test_1_svc(struct nlm_testargs *argp, nlm_testres *result, struct svc_req *rqstp)
{
 bool_t retval;
 nlm4_testargs args4;
 nlm4_testres res4;

 args4.cookie = argp->cookie;
 args4.exclusive = argp->exclusive;
 nlm_convert_to_nlm4_lock(&args4.alock, &argp->alock);

 retval = nlm4_test_4_svc(&args4, &res4, rqstp);
 if (retval) {
  result->cookie = res4.cookie;
  result->stat.stat = nlm_convert_to_nlm_stats(res4.stat.stat);
  if (result->stat.stat == nlm_denied)
   nlm_convert_to_nlm_holder(
    &result->stat.nlm_testrply_u.holder,
    &res4.stat.nlm4_testrply_u.holder);
 }

 return (retval);
}
