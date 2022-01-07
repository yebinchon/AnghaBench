
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xdrproc_t ;
struct timeval {int dummy; } ;
struct rpc_callextra {int dummy; } ;
struct nlm_cancargs {int dummy; } ;
typedef int nlm_res ;
typedef enum clnt_stat { ____Placeholder_clnt_stat } clnt_stat ;
typedef int caddr_t ;
typedef int CLIENT ;


 int CLNT_CALL_EXT (int *,struct rpc_callextra*,int ,int ,int ,int ,int ,struct timeval) ;
 int NLM_CANCEL ;
 scalar_t__ xdr_nlm_cancargs ;
 scalar_t__ xdr_nlm_res ;

enum clnt_stat
nlm_cancel_1(struct nlm_cancargs *argp, nlm_res *clnt_res, CLIENT *clnt, struct rpc_callextra *ext, struct timeval timo)
{
 return (CLNT_CALL_EXT(clnt, ext, NLM_CANCEL,
  (xdrproc_t) xdr_nlm_cancargs, (caddr_t) argp,
  (xdrproc_t) xdr_nlm_res, (caddr_t) clnt_res,
  timo));
}
