
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xdrproc_t ;
struct timeval {int dummy; } ;
struct rpc_callextra {int dummy; } ;
typedef int nlm_shareres ;
typedef int nlm_shareargs ;
typedef enum clnt_stat { ____Placeholder_clnt_stat } clnt_stat ;
typedef int caddr_t ;
typedef int CLIENT ;


 int CLNT_CALL_EXT (int *,struct rpc_callextra*,int ,int ,int ,int ,int ,struct timeval) ;
 int NLM_UNSHARE ;
 scalar_t__ xdr_nlm_shareargs ;
 scalar_t__ xdr_nlm_shareres ;

enum clnt_stat
nlm_unshare_3(nlm_shareargs *argp, nlm_shareres *clnt_res, CLIENT *clnt, struct rpc_callextra *ext, struct timeval timo)
{
 return (CLNT_CALL_EXT(clnt, ext, NLM_UNSHARE,
  (xdrproc_t) xdr_nlm_shareargs, (caddr_t) argp,
  (xdrproc_t) xdr_nlm_shareres, (caddr_t) clnt_res,
  timo));
}
