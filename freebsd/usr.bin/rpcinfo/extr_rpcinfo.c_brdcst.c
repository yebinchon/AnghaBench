
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xdrproc_t ;
typedef int u_long ;
typedef int resultproc_t ;
typedef enum clnt_stat { ____Placeholder_clnt_stat } clnt_stat ;


 int NULLPROC ;
 int RPC_SUCCESS ;
 int RPC_TIMEDOUT ;
 int clnt_sperrno (int) ;
 int errx (int,char*,int ) ;
 int exit (int ) ;
 int getprognum (char*) ;
 int getvers (char*) ;
 scalar_t__ reply_proc ;
 int rpc_broadcast (int ,int ,int ,int ,char*,int ,char*,int ,int *) ;
 int usage () ;
 scalar_t__ xdr_void ;

__attribute__((used)) static void
brdcst(int argc, char **argv)
{
 enum clnt_stat rpc_stat;
 u_long prognum, vers;

 if (argc != 2)
  usage();
 prognum = getprognum(argv[0]);
 vers = getvers(argv[1]);
 rpc_stat = rpc_broadcast(prognum, vers, NULLPROC,
  (xdrproc_t) xdr_void, (char *)((void*)0), (xdrproc_t) xdr_void,
  (char *)((void*)0), (resultproc_t) reply_proc, ((void*)0));
 if ((rpc_stat != RPC_SUCCESS) && (rpc_stat != RPC_TIMEDOUT))
  errx(1, "broadcast failed: %s", clnt_sperrno(rpc_stat));
 exit(0);
}
