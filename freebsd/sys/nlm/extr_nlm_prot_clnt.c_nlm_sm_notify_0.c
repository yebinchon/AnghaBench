
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xdrproc_t ;
struct timeval {int dummy; } ;
struct rpc_callextra {int dummy; } ;
struct nlm_sm_status {int dummy; } ;
typedef enum clnt_stat { ____Placeholder_clnt_stat } clnt_stat ;
typedef int caddr_t ;
typedef int CLIENT ;


 int CLNT_CALL_EXT (int *,struct rpc_callextra*,int ,int ,int ,int ,int ,struct timeval) ;
 int NLM_SM_NOTIFY ;
 scalar_t__ xdr_nlm_sm_status ;
 scalar_t__ xdr_void ;

enum clnt_stat
nlm_sm_notify_0(struct nlm_sm_status *argp, void *clnt_res, CLIENT *clnt, struct rpc_callextra *ext, struct timeval timo)
{
 return (CLNT_CALL_EXT(clnt, ext, NLM_SM_NOTIFY,
  (xdrproc_t) xdr_nlm_sm_status, (caddr_t) argp,
  (xdrproc_t) xdr_void, (caddr_t) clnt_res,
  timo));
}
