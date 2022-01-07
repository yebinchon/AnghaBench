
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xdrproc_t ;
struct timeval {int member_1; int member_0; } ;
typedef int domainname ;
typedef int clnt_res ;
typedef int caddr_t ;
typedef int bool_t ;
typedef int CLIENT ;


 scalar_t__ RPC_SUCCESS ;
 int YPPROC_DOMAIN_NONACK ;
 scalar_t__ clnt_call (int *,int ,int ,int ,int ,int ,struct timeval) ;
 int memset (char*,int ,int) ;
 scalar_t__ xdr_bool ;

__attribute__((used)) static bool_t *
ypproc_domain_nonack_2_recv(domainname *argp, CLIENT *clnt)
{
 static bool_t clnt_res;
 struct timeval TIMEOUT = { 0, 0 };

 memset((char *)&clnt_res, 0, sizeof (clnt_res));
 if (clnt_call(clnt, YPPROC_DOMAIN_NONACK,
  (xdrproc_t) ((void*)0), (caddr_t) argp,
  (xdrproc_t) xdr_bool, (caddr_t) &clnt_res,
  TIMEOUT) != RPC_SUCCESS) {
  return (((void*)0));
 }
 return (&clnt_res);
}
