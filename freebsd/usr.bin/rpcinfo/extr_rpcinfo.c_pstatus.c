
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct rpc_err {scalar_t__ re_status; } ;
typedef int CLIENT ;


 scalar_t__ RPC_SUCCESS ;
 int clnt_geterr (int *,struct rpc_err*) ;
 int clnt_perror (int *,char*) ;
 int printf (char*,int ,int ) ;

__attribute__((used)) static int
pstatus(register CLIENT *client, u_long prog, u_long vers)
{
 struct rpc_err rpcerr;

 clnt_geterr(client, &rpcerr);
 if (rpcerr.re_status != RPC_SUCCESS) {
  clnt_perror(client, "rpcinfo");
  printf("program %lu version %lu is not available\n",
   prog, vers);
  return (-1);
 } else {
  printf("program %lu version %lu ready and waiting\n",
   prog, vers);
  return (0);
 }
}
