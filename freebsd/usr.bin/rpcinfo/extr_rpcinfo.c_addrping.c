
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xdrproc_t ;
typedef scalar_t__ u_long ;
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct TYPE_2__ {scalar_t__ low; scalar_t__ high; } ;
struct rpc_err {TYPE_1__ re_vers; } ;
struct netconfig {int dummy; } ;
typedef enum clnt_stat { ____Placeholder_clnt_stat } clnt_stat ;
typedef int CLIENT ;


 int CLGET_FD ;
 int CLNT_CALL (int *,int ,int ,char*,int ,char*,struct timeval) ;
 int CLNT_CONTROL (int *,int ,char*) ;
 int CLNT_DESTROY (int *) ;
 int CLSET_FD_NCLOSE ;
 scalar_t__ MAX_VERS ;
 scalar_t__ MIN_VERS ;
 int NULLPROC ;
 int RPC_PROGVERSMISMATCH ;
 int RPC_SUCCESS ;
 int * clnt_addr_create (char*,struct netconfig*,scalar_t__,scalar_t__) ;
 int clnt_geterr (int *,struct rpc_err*) ;
 int close (int) ;
 int errx (int,char*,char*) ;
 int exit (int) ;
 struct netconfig* getnetconfigent (char*) ;
 scalar_t__ getprognum (char*) ;
 scalar_t__ getvers (char*) ;
 scalar_t__ pstatus (int *,scalar_t__,scalar_t__) ;
 int usage () ;
 scalar_t__ xdr_void ;

__attribute__((used)) static void
addrping(char *address, char *netid, int argc, char **argv)
{
 CLIENT *client;
 struct timeval to;
 enum clnt_stat rpc_stat;
 u_long prognum, versnum, minvers, maxvers;
 struct rpc_err rpcerr;
 int failure = 0;
 struct netconfig *nconf;
 int fd;

 if (argc < 1 || argc > 2 || (netid == ((void*)0)))
  usage();
 nconf = getnetconfigent(netid);
 if (nconf == (struct netconfig *)((void*)0))
  errx(1, "could not find %s", netid);
 to.tv_sec = 10;
 to.tv_usec = 0;
 prognum = getprognum(argv[0]);
 if (argc == 1) {




  versnum = MIN_VERS;
 } else {
  versnum = getvers(argv[1]);
 }
 client = clnt_addr_create(address, nconf, prognum, versnum);
 rpc_stat = CLNT_CALL(client, NULLPROC, (xdrproc_t) xdr_void,
   (char *)((void*)0), (xdrproc_t) xdr_void,
   (char *)((void*)0), to);
 if (argc == 2) {

  if (pstatus(client, prognum, versnum) < 0)
   failure = 1;
  (void) CLNT_DESTROY(client);
  if (failure)
   exit(1);
  return;
 }

 (void) CLNT_CONTROL(client, CLSET_FD_NCLOSE, (char *)((void*)0));
 (void) CLNT_CONTROL(client, CLGET_FD, (char *)&fd);
 if (rpc_stat == RPC_PROGVERSMISMATCH) {
  clnt_geterr(client, &rpcerr);
  minvers = rpcerr.re_vers.low;
  maxvers = rpcerr.re_vers.high;
 } else if (rpc_stat == RPC_SUCCESS) {




  (void) CLNT_DESTROY(client);
  client = clnt_addr_create(address, nconf, prognum, MAX_VERS);
  rpc_stat = CLNT_CALL(client, NULLPROC, (xdrproc_t) xdr_void,
    (char *)((void*)0), (xdrproc_t) xdr_void,
    (char *)((void*)0), to);
  if (rpc_stat == RPC_PROGVERSMISMATCH) {
   clnt_geterr(client, &rpcerr);
   minvers = rpcerr.re_vers.low;
   maxvers = rpcerr.re_vers.high;
  } else if (rpc_stat == RPC_SUCCESS) {






   minvers = 0;
   maxvers = MAX_VERS;
  } else {
   (void) pstatus(client, prognum, MAX_VERS);
   exit(1);
  }
 } else {
  (void) pstatus(client, prognum, (u_long)0);
  exit(1);
 }
 (void) CLNT_DESTROY(client);
 for (versnum = minvers; versnum <= maxvers; versnum++) {
  client = clnt_addr_create(address, nconf, prognum, versnum);
  rpc_stat = CLNT_CALL(client, NULLPROC, (xdrproc_t) xdr_void,
    (char *)((void*)0), (xdrproc_t) xdr_void,
    (char *)((void*)0), to);
  if (pstatus(client, prognum, versnum) < 0)
    failure = 1;
  (void) CLNT_DESTROY(client);
 }
 (void) close(fd);
 if (failure)
  exit(1);
 return;
}
