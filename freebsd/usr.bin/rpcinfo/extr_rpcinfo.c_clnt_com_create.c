
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_long ;
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct sockaddr_in {int dummy; } ;
typedef int CLIENT ;


 scalar_t__ MIN_VERS ;
 int clnt_pcreateerror (char*) ;
 int * clnttcp_create (struct sockaddr_in*,scalar_t__,scalar_t__,int*,int ,int ) ;
 int * clntudp_create (struct sockaddr_in*,scalar_t__,scalar_t__,struct timeval,int*) ;
 int exit (int) ;
 int printf (char*,scalar_t__,...) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static CLIENT *
clnt_com_create(struct sockaddr_in *addr, u_long prog, u_long vers,
    int *fdp, const char *trans)
{
 CLIENT *clnt;

 if (strcmp(trans, "tcp") == 0) {
  clnt = clnttcp_create(addr, prog, vers, fdp, 0, 0);
 } else {
  struct timeval to;

  to.tv_sec = 5;
  to.tv_usec = 0;
  clnt = clntudp_create(addr, prog, vers, to, fdp);
 }
 if (clnt == (CLIENT *)((void*)0)) {
  clnt_pcreateerror("rpcinfo");
  if (vers == MIN_VERS)
   printf("program %lu is not available\n", prog);
  else
   printf("program %lu version %lu is not available\n",
       prog, vers);
  exit(1);
 }
 return (clnt);
}
