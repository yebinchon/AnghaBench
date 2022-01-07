
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct svc_req {int dummy; } ;
struct TYPE_11__ {int holder; } ;
struct TYPE_12__ {scalar_t__ stat; TYPE_3__ nlm_testrply_u; } ;
struct TYPE_13__ {TYPE_4__ stat; int cookie; } ;
typedef TYPE_5__ nlm_testres ;
struct TYPE_9__ {int holder; } ;
struct TYPE_10__ {TYPE_1__ nlm4_testrply_u; } ;
struct TYPE_14__ {TYPE_2__ stat; int cookie; } ;
typedef TYPE_6__ nlm4_testres ;
typedef int bool_t ;


 int nlm4_test_res_4_svc (TYPE_6__*,void*,struct svc_req*) ;
 int nlm_convert_to_nlm4_holder (int *,int *) ;
 scalar_t__ nlm_denied ;

bool_t
nlm_test_res_1_svc(nlm_testres *argp, void *result, struct svc_req *rqstp)
{
 nlm4_testres args4;

 args4.cookie = argp->cookie;
 if (argp->stat.stat == nlm_denied)
  nlm_convert_to_nlm4_holder(
   &args4.stat.nlm4_testrply_u.holder,
   &argp->stat.nlm_testrply_u.holder);

 return (nlm4_test_res_4_svc(&args4, result, rqstp));
}
