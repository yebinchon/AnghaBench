
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int xdrproc_t ;
struct svc_req {int dummy; } ;
struct nlm_cancargs {int alock; int exclusive; int block; int cookie; } ;
typedef int nlm_res ;
typedef int nlm4_res ;
struct TYPE_3__ {int alock; int exclusive; int block; int cookie; } ;
typedef TYPE_1__ nlm4_cancargs ;
typedef int bool_t ;
typedef int CLIENT ;


 int CLNT_RELEASE (int *) ;
 int FALSE ;
 int nlm_cancel_res_1 (int *,char*,int *,int *,int ) ;
 int nlm_convert_to_nlm4_lock (int *,int *) ;
 int nlm_convert_to_nlm_res (int *,int *) ;
 scalar_t__ nlm_do_cancel (TYPE_1__*,int *,struct svc_req*,int **) ;
 int nlm_zero_tv ;
 int xdr_free (int ,int *) ;
 scalar_t__ xdr_nlm_res ;

bool_t
nlm_cancel_msg_1_svc(struct nlm_cancargs *argp, void *result, struct svc_req *rqstp)
{
 nlm4_cancargs args4;
 nlm4_res res4;
 nlm_res res;
 CLIENT *rpc;
 char dummy;

 args4.cookie = argp->cookie;
 args4.block = argp->block;
 args4.exclusive = argp->exclusive;
 nlm_convert_to_nlm4_lock(&args4.alock, &argp->alock);

 if (nlm_do_cancel(&args4, &res4, rqstp, &rpc))
  return (FALSE);

 nlm_convert_to_nlm_res(&res, &res4);

 if (rpc) {
  nlm_cancel_res_1(&res, &dummy, rpc, ((void*)0), nlm_zero_tv);
  CLNT_RELEASE(rpc);
 }
 xdr_free((xdrproc_t) xdr_nlm_res, &res);

 return (FALSE);
}
