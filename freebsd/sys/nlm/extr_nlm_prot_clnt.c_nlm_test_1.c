
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xdrproc_t ;
struct timeval {int dummy; } ;
struct rpc_callextra {int dummy; } ;
struct nlm_testargs {int dummy; } ;
typedef int nlm_testres ;
typedef enum clnt_stat { ____Placeholder_clnt_stat } clnt_stat ;
typedef int caddr_t ;
typedef int CLIENT ;


 int CLNT_CALL_EXT (int *,struct rpc_callextra*,int ,int ,int ,int ,int ,struct timeval) ;
 int NLM_TEST ;
 scalar_t__ xdr_nlm_testargs ;
 scalar_t__ xdr_nlm_testres ;

enum clnt_stat
nlm_test_1(struct nlm_testargs *argp, nlm_testres *clnt_res, CLIENT *clnt, struct rpc_callextra *ext, struct timeval timo)
{
 return (CLNT_CALL_EXT(clnt, ext, NLM_TEST,
  (xdrproc_t) xdr_nlm_testargs, (caddr_t) argp,
  (xdrproc_t) xdr_nlm_testres, (caddr_t) clnt_res,
  timo));
}
