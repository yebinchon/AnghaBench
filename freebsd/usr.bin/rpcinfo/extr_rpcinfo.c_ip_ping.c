
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xdrproc_t ;
typedef int u_short ;
typedef scalar_t__ u_long ;
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct sockaddr_in {void* sin_port; } ;
struct TYPE_2__ {scalar_t__ low; scalar_t__ high; } ;
struct rpc_err {TYPE_1__ re_vers; } ;
typedef enum clnt_stat { ____Placeholder_clnt_stat } clnt_stat ;
typedef int CLIENT ;


 int CLNT_CALL (int *,int ,int ,char*,int ,char*,struct timeval) ;
 int CLNT_CONTROL (int *,int ,char*) ;
 int CLNT_DESTROY (int *) ;
 int CLSET_FD_NCLOSE ;
 scalar_t__ MAX_VERS ;
 scalar_t__ MIN_VERS ;
 int NULLPROC ;
 int RPC_ANYFD ;
 int RPC_PROGVERSMISMATCH ;
 int RPC_SUCCESS ;
 int * clnt_com_create (struct sockaddr_in*,scalar_t__,scalar_t__,int*,char const*) ;
 int clnt_geterr (int *,struct rpc_err*) ;
 int close (int) ;
 int exit (int) ;
 int get_inet_address (struct sockaddr_in*,char*) ;
 scalar_t__ getprognum (char*) ;
 scalar_t__ getvers (char*) ;
 void* htons (int ) ;
 scalar_t__ pstatus (int *,scalar_t__,scalar_t__) ;
 int usage () ;
 scalar_t__ xdr_void ;

__attribute__((used)) static void
ip_ping(u_short portnum, const char *trans, int argc, char **argv)
{
 CLIENT *client;
 int fd = RPC_ANYFD;
 struct timeval to;
 struct sockaddr_in addr;
 enum clnt_stat rpc_stat;
 u_long prognum, vers, minvers, maxvers;
 struct rpc_err rpcerr;
 int failure = 0;

 if (argc < 2 || argc > 3)
  usage();
 to.tv_sec = 10;
 to.tv_usec = 0;
 prognum = getprognum(argv[1]);
 get_inet_address(&addr, argv[0]);
 if (argc == 2) {




  vers = MIN_VERS;
 } else {
  vers = getvers(argv[2]);
 }
 addr.sin_port = htons(portnum);
 client = clnt_com_create(&addr, prognum, vers, &fd, trans);
 rpc_stat = CLNT_CALL(client, NULLPROC, (xdrproc_t) xdr_void,
   (char *)((void*)0), (xdrproc_t) xdr_void, (char *)((void*)0),
   to);
 if (argc != 2) {

  if (pstatus(client, prognum, vers) < 0)
   exit(1);
  (void) CLNT_DESTROY(client);
  return;
 }

 (void) CLNT_CONTROL(client, CLSET_FD_NCLOSE, (char *)((void*)0));
 if (rpc_stat == RPC_PROGVERSMISMATCH) {
  clnt_geterr(client, &rpcerr);
  minvers = rpcerr.re_vers.low;
  maxvers = rpcerr.re_vers.high;
 } else if (rpc_stat == RPC_SUCCESS) {




  (void) CLNT_DESTROY(client);
  addr.sin_port = htons(portnum);
  client = clnt_com_create(&addr, prognum, MAX_VERS, &fd, trans);
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
 for (vers = minvers; vers <= maxvers; vers++) {
  addr.sin_port = htons(portnum);
  client = clnt_com_create(&addr, prognum, vers, &fd, trans);
  rpc_stat = CLNT_CALL(client, NULLPROC, (xdrproc_t) xdr_void,
    (char *)((void*)0), (xdrproc_t) xdr_void,
    (char *)((void*)0), to);
  if (pstatus(client, prognum, vers) < 0)
    failure = 1;
  (void) CLNT_DESTROY(client);
 }
 if (failure)
  exit(1);
 (void) close(fd);
 return;
}
