
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int xdrproc_t ;
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
typedef enum clnt_stat { ____Placeholder_clnt_stat } clnt_stat ;
typedef int caddr_t ;
struct TYPE_6__ {int cl_auth; } ;
typedef TYPE_1__ CLIENT ;


 int MOUNTPROC_UMNTALL ;
 int MOUNTPROG ;
 int MOUNTVERS ;
 int RPC_SUCCESS ;
 int auth_destroy (int ) ;
 int authunix_create_default () ;
 int clnt_call (TYPE_1__*,int ,int ,int ,int ,int ,struct timeval) ;
 TYPE_1__* clnt_create_timed (char*,int ,int ,char*,struct timeval*) ;
 int clnt_destroy (TYPE_1__*) ;
 int clnt_spcreateerror (char*) ;
 int clnt_sperror (TYPE_1__*,char*) ;
 int warnx (char*,char*,int ) ;
 scalar_t__ xdr_void ;

int
do_umntall(char *hostname) {
 enum clnt_stat clnt_stat;
 struct timeval try;
 CLIENT *clp;

 try.tv_sec = 3;
 try.tv_usec = 0;
 clp = clnt_create_timed(hostname, MOUNTPROG, MOUNTVERS, "udp",
     &try);
 if (clp == ((void*)0)) {
  warnx("%s: %s", hostname, clnt_spcreateerror("MOUNTPROG"));
  return (0);
 }
 clp->cl_auth = authunix_create_default();
 clnt_stat = clnt_call(clp, MOUNTPROC_UMNTALL,
     (xdrproc_t)xdr_void, (caddr_t)0,
     (xdrproc_t)xdr_void, (caddr_t)0, try);
 if (clnt_stat != RPC_SUCCESS)
  warnx("%s: %s", hostname, clnt_sperror(clp, "MOUNTPROC_UMNTALL"));
 auth_destroy(clp->cl_auth);
 clnt_destroy(clp);
 return (clnt_stat == RPC_SUCCESS);
}
