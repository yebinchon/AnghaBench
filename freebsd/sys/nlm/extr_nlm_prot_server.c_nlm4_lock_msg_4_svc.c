
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xdrproc_t ;
struct svc_req {int dummy; } ;
typedef int nlm4_res ;
typedef int nlm4_lockargs ;
typedef int bool_t ;
typedef int CLIENT ;


 int CLNT_RELEASE (int *) ;
 int FALSE ;
 int TRUE ;
 int nlm4_lock_res_4 (int *,char*,int *,int *,int ) ;
 scalar_t__ nlm_do_lock (int *,int *,struct svc_req*,int ,int **) ;
 int nlm_zero_tv ;
 int xdr_free (int ,int *) ;
 scalar_t__ xdr_nlm4_res ;

bool_t
nlm4_lock_msg_4_svc(nlm4_lockargs *argp, void *result, struct svc_req *rqstp)
{
 nlm4_res res4;
 CLIENT *rpc;
 char dummy;

 if (nlm_do_lock(argp, &res4, rqstp, TRUE, &rpc))
  return (FALSE);
 if (rpc) {
  nlm4_lock_res_4(&res4, &dummy, rpc, ((void*)0), nlm_zero_tv);
  CLNT_RELEASE(rpc);
 }
 xdr_free((xdrproc_t) xdr_nlm4_res, &res4);

 return (FALSE);
}
