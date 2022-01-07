
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


 int CLNT_CALL (int *,int ,int ,char*,int ,char*,struct timeval) ;
 int CLNT_CONTROL (int *,int ,char*) ;
 int CLNT_DESTROY (int *) ;
 int CLSET_VERS ;
 scalar_t__ MAX_VERS ;
 scalar_t__ MIN_VERS ;
 int NULLPROC ;
 int RPC_PROGVERSMISMATCH ;
 int RPC_SUCCESS ;
 int * clnt_create (char*,scalar_t__,scalar_t__,char*) ;
 int clnt_geterr (int *,struct rpc_err*) ;
 int clnt_pcreateerror (char*) ;
 int * clnt_tp_create (char*,scalar_t__,scalar_t__,struct netconfig*) ;
 int errx (int,char*,char*) ;
 int exit (int) ;
 struct netconfig* getnetconfigent (char*) ;
 scalar_t__ getprognum (char*) ;
 scalar_t__ getvers (char*) ;
 scalar_t__ pstatus (int *,scalar_t__,scalar_t__) ;
 int usage () ;
 scalar_t__ xdr_void ;

__attribute__((used)) static void
progping(char *netid, int argc, char **argv)
{
 CLIENT *client;
 struct timeval to;
 enum clnt_stat rpc_stat;
 u_long prognum, versnum, minvers, maxvers;
 struct rpc_err rpcerr;
 int failure = 0;
 struct netconfig *nconf;

 if (argc < 2 || argc > 3 || (netid == ((void*)0)))
  usage();
 prognum = getprognum(argv[1]);
 if (argc == 2) {




  versnum = MIN_VERS;
 } else {
  versnum = getvers(argv[2]);
 }
 if (netid) {
  nconf = getnetconfigent(netid);
  if (nconf == (struct netconfig *)((void*)0))
   errx(1, "could not find %s", netid);
  client = clnt_tp_create(argv[0], prognum, versnum, nconf);
 } else {
  client = clnt_create(argv[0], prognum, versnum, "NETPATH");
 }
 if (client == (CLIENT *)((void*)0)) {
  clnt_pcreateerror("rpcinfo");
  exit(1);
 }
 to.tv_sec = 10;
 to.tv_usec = 0;
 rpc_stat = CLNT_CALL(client, NULLPROC, (xdrproc_t) xdr_void,
   (char *)((void*)0), (xdrproc_t) xdr_void,
   (char *)((void*)0), to);
 if (argc == 3) {

  if (pstatus(client, prognum, versnum) < 0)
   failure = 1;
  (void) CLNT_DESTROY(client);
  if (failure)
   exit(1);
  return;
 }

 if (rpc_stat == RPC_PROGVERSMISMATCH) {
  clnt_geterr(client, &rpcerr);
  minvers = rpcerr.re_vers.low;
  maxvers = rpcerr.re_vers.high;
 } else if (rpc_stat == RPC_SUCCESS) {




  versnum = MAX_VERS;
  (void) CLNT_CONTROL(client, CLSET_VERS, (char *)&versnum);
  rpc_stat = CLNT_CALL(client, NULLPROC,
    (xdrproc_t) xdr_void, (char *)((void*)0),
    (xdrproc_t) xdr_void, (char *)((void*)0), to);
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
 for (versnum = minvers; versnum <= maxvers; versnum++) {
  (void) CLNT_CONTROL(client, CLSET_VERS, (char *)&versnum);
  rpc_stat = CLNT_CALL(client, NULLPROC, (xdrproc_t) xdr_void,
     (char *)((void*)0), (xdrproc_t) xdr_void,
     (char *)((void*)0), to);
  if (pstatus(client, prognum, versnum) < 0)
    failure = 1;
 }
 (void) CLNT_DESTROY(client);
 if (failure)
  exit(1);
 return;
}
