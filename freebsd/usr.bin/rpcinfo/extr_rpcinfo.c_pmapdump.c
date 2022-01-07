
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int xdrproc_t ;
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct sockaddr_in {int sin_port; } ;
struct rpcent {char* r_name; } ;
struct TYPE_6__ {scalar_t__ low; } ;
struct rpc_err {TYPE_2__ re_vers; } ;
struct TYPE_7__ {int pm_prog; int pm_port; int pm_prot; int pm_vers; } ;
struct pmaplist {TYPE_3__ pml_map; struct pmaplist* pml_next; } ;
typedef enum clnt_stat { ____Placeholder_clnt_stat } clnt_stat ;
struct TYPE_5__ {int re_status; } ;
struct TYPE_8__ {scalar_t__ cf_stat; TYPE_1__ cf_error; } ;
typedef int CLIENT ;


 int CLNT_CALL (int *,int ,int ,int *,int ,char*,struct timeval) ;
 int CLNT_GETERR (int *,struct rpc_err*) ;
 int IPPROTO_ST ;
 int IPPROTO_TCP ;
 int IPPROTO_UDP ;
 int PMAPPORT ;
 int PMAPPROC_DUMP ;
 int PMAPPROG ;
 scalar_t__ PMAPVERS ;
 int RPC_ANYSOCK ;
 int RPC_FAILED ;
 scalar_t__ RPC_PMAPFAILURE ;
 int RPC_PROGUNAVAIL ;
 int RPC_PROGVERSMISMATCH ;
 int RPC_SUCCESS ;
 scalar_t__ RPC_TLIERROR ;
 int clnt_pcreateerror (char*) ;
 int clnt_perror (int *,char*) ;
 int * clnttcp_create (struct sockaddr_in*,int ,scalar_t__,int*,int,int) ;
 int exit (int) ;
 int get_inet_address (struct sockaddr_in*,char*) ;
 struct rpcent* getrpcbynumber (int ) ;
 int htons (int ) ;
 int * local_rpcb (int ,scalar_t__) ;
 int printf (char*,...) ;
 TYPE_4__ rpc_createerr ;
 int usage () ;
 int warnx (char*,...) ;
 scalar_t__ xdr_pmaplist_ptr ;
 scalar_t__ xdr_void ;

__attribute__((used)) static void
pmapdump(int argc, char **argv)
{
 struct sockaddr_in server_addr;
 struct pmaplist *head = ((void*)0);
 int socket = RPC_ANYSOCK;
 struct timeval minutetimeout;
 register CLIENT *client;
 struct rpcent *rpc;
 enum clnt_stat clnt_st;
 struct rpc_err err;
 char *host = ((void*)0);

 if (argc > 1)
  usage();
 if (argc == 1) {
  host = argv[0];
  get_inet_address(&server_addr, host);
  server_addr.sin_port = htons(PMAPPORT);
  client = clnttcp_create(&server_addr, PMAPPROG, PMAPVERS,
      &socket, 50, 500);
 } else
  client = local_rpcb(PMAPPROG, PMAPVERS);

 if (client == ((void*)0)) {
  if (rpc_createerr.cf_stat == RPC_TLIERROR) {





   rpc_createerr.cf_stat = RPC_PMAPFAILURE;
   rpc_createerr.cf_error.re_status = RPC_FAILED;
  }
  clnt_pcreateerror("rpcinfo: can't contact portmapper");
  exit(1);
 }

 minutetimeout.tv_sec = 60;
 minutetimeout.tv_usec = 0;

 clnt_st = CLNT_CALL(client, PMAPPROC_DUMP, (xdrproc_t) xdr_void,
  ((void*)0), (xdrproc_t) xdr_pmaplist_ptr, (char *)&head,
  minutetimeout);
 if (clnt_st != RPC_SUCCESS) {
  if ((clnt_st == RPC_PROGVERSMISMATCH) ||
      (clnt_st == RPC_PROGUNAVAIL)) {
   CLNT_GETERR(client, &err);
   if (err.re_vers.low > PMAPVERS) {
    if (host)
     warnx("%s does not support portmapper."
         "Try rpcinfo %s instead", host,
         host);
    else
     warnx("local host does not support "
         "portmapper.  Try 'rpcinfo' "
         "instead");
   }
   exit(1);
  }
  clnt_perror(client, "rpcinfo: can't contact portmapper");
  exit(1);
 }
 if (head == ((void*)0)) {
  printf("No remote programs registered.\n");
 } else {
  printf("   program vers proto   port  service\n");
  for (; head != ((void*)0); head = head->pml_next) {
   printf("%10ld%5ld",
    head->pml_map.pm_prog,
    head->pml_map.pm_vers);
   if (head->pml_map.pm_prot == IPPROTO_UDP)
    printf("%6s", "udp");
   else if (head->pml_map.pm_prot == IPPROTO_TCP)
    printf("%6s", "tcp");
   else if (head->pml_map.pm_prot == IPPROTO_ST)
    printf("%6s", "local");
   else
    printf("%6ld", head->pml_map.pm_prot);
   printf("%7ld", head->pml_map.pm_port);
   rpc = getrpcbynumber(head->pml_map.pm_prog);
   if (rpc)
    printf("  %s\n", rpc->r_name);
   else
    printf("\n");
  }
 }
}
