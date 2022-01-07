
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xdrproc_t ;
struct timeval {int dummy; } ;
struct rpc_callextra {int dummy; } ;
typedef int nlm4_cancargs ;
typedef enum clnt_stat { ____Placeholder_clnt_stat } clnt_stat ;
typedef int caddr_t ;
typedef int CLIENT ;


 int CLNT_CALL_EXT (int *,struct rpc_callextra*,int ,int ,int ,int ,int ,struct timeval) ;
 int NLM4_CANCEL_MSG ;
 scalar_t__ xdr_nlm4_cancargs ;
 scalar_t__ xdr_void ;

enum clnt_stat
nlm4_cancel_msg_4(nlm4_cancargs *argp, void *clnt_res, CLIENT *clnt, struct rpc_callextra *ext, struct timeval timo)
{
 return (CLNT_CALL_EXT(clnt, ext, NLM4_CANCEL_MSG,
  (xdrproc_t) xdr_nlm4_cancargs, (caddr_t) argp,
  (xdrproc_t) xdr_void, (caddr_t) clnt_res,
  timo));
}
