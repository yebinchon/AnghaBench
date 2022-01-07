
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int xdrproc_t ;
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct rpcent {char* r_name; } ;
struct netconfig {int dummy; } ;
struct netbuf {struct netbuf* buf; } ;
typedef TYPE_1__* rpcb_entry_list_ptr ;
struct TYPE_11__ {char* r_nc_protofmly; char* r_nc_proto; scalar_t__ r_nc_semantics; char* r_maddr; } ;
typedef TYPE_2__ rpcb_entry ;
struct TYPE_13__ {char* cl_netid; } ;
struct TYPE_12__ {int r_prog; char* r_netid; int r_vers; void* r_owner; int * r_addr; } ;
struct TYPE_10__ {TYPE_2__ rpcb_entry_map; struct TYPE_10__* rpcb_entry_next; } ;
typedef TYPE_3__ RPCB ;
typedef TYPE_4__ CLIENT ;


 scalar_t__ CLNT_CALL (TYPE_4__*,int ,int ,char*,int ,char*,struct timeval) ;
 scalar_t__ NC_TPI_CLTS ;
 scalar_t__ NC_TPI_COTS ;
 int RPCBPROC_GETADDRLIST ;
 int RPCBVERS4 ;
 scalar_t__ RPC_SUCCESS ;
 int clnt_destroy (TYPE_4__*) ;
 int clnt_pcreateerror (char*) ;
 int clnt_perror (TYPE_4__*,char*) ;
 TYPE_4__* clnt_rpcbind_create (char*,int ,struct netbuf**) ;
 int exit (int) ;
 int free (struct netbuf*) ;
 int freenetconfigent (struct netconfig*) ;
 TYPE_4__* getclnthandle (char*,struct netconfig*,int ,struct netbuf**) ;
 struct netconfig* getnetconfigent (char*) ;
 int getprognum (char*) ;
 struct rpcent* getrpcbynumber (int) ;
 int getvers (char*) ;
 int nc_perror (char*) ;
 void* nullstring ;
 int printf (char*,...) ;
 int sprintf (char*,char*,char*,char*,char*) ;
 int * taddr2uaddr (struct netconfig*,struct netbuf*) ;
 int usage () ;
 scalar_t__ xdr_rpcb ;
 scalar_t__ xdr_rpcb_entry_list_ptr ;

__attribute__((used)) static void
rpcbaddrlist(char *netid, int argc, char **argv)
{
 rpcb_entry_list_ptr head = ((void*)0);
 struct timeval minutetimeout;
 register CLIENT *client;
 struct rpcent *rpc;
 char *host;
 RPCB parms;
 struct netbuf *targaddr;

 if (argc != 3)
  usage();
 host = argv[0];
 if (netid == ((void*)0)) {
  client = clnt_rpcbind_create(host, RPCBVERS4, &targaddr);
 } else {
  struct netconfig *nconf;

  nconf = getnetconfigent(netid);
  if (nconf == ((void*)0)) {
   nc_perror("rpcinfo: invalid transport");
   exit(1);
  }
  client = getclnthandle(host, nconf, RPCBVERS4, &targaddr);
  if (nconf)
   (void) freenetconfigent(nconf);
 }
 if (client == (CLIENT *)((void*)0)) {
  clnt_pcreateerror("rpcinfo: can't contact rpcbind");
  exit(1);
 }
 minutetimeout.tv_sec = 60;
 minutetimeout.tv_usec = 0;

 parms.r_prog = getprognum(argv[1]);
 parms.r_vers = getvers(argv[2]);
 parms.r_netid = client->cl_netid;
 if (targaddr == ((void*)0)) {
  parms.r_addr = nullstring;
 } else {





  struct netconfig *nconf;

  nconf = getnetconfigent(client->cl_netid);
  if (nconf != ((void*)0)) {
   parms.r_addr = taddr2uaddr(nconf, targaddr);
   if (parms.r_addr == ((void*)0))
    parms.r_addr = nullstring;
   freenetconfigent(nconf);
  } else {
   parms.r_addr = nullstring;
  }
  free(targaddr->buf);
  free(targaddr);
 }
 parms.r_owner = nullstring;

 if (CLNT_CALL(client, RPCBPROC_GETADDRLIST, (xdrproc_t) xdr_rpcb,
  (char *) &parms, (xdrproc_t) xdr_rpcb_entry_list_ptr,
  (char *) &head, minutetimeout) != RPC_SUCCESS) {
  clnt_perror(client, "rpcinfo: can't contact rpcbind: ");
  exit(1);
 }
 if (head == ((void*)0)) {
  printf("No remote programs registered.\n");
 } else {
  printf(
 "   program vers  tp_family/name/class    address\t\t  service\n");
  for (; head != ((void*)0); head = head->rpcb_entry_next) {
   rpcb_entry *re;
   char buf[128];

   re = &head->rpcb_entry_map;
   printf("%10u%3u    ",
    parms.r_prog, parms.r_vers);
   sprintf(buf, "%s/%s/%s ",
    re->r_nc_protofmly, re->r_nc_proto,
    re->r_nc_semantics == NC_TPI_CLTS ? "clts" :
    re->r_nc_semantics == NC_TPI_COTS ? "cots" :
      "cots_ord");
   printf("%-24s", buf);
   printf("%-24s", re->r_maddr);
   rpc = getrpcbynumber(parms.r_prog);
   if (rpc)
    printf(" %-13s", rpc->r_name);
   else
    printf(" %-13s", "-");
   printf("\n");
  }
 }
 clnt_destroy(client);
 return;
}
