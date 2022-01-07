
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xdrproc_t ;
struct TYPE_2__ {char* name; scalar_t__ state; } ;
typedef TYPE_1__ nlm4_notify ;
typedef enum clnt_stat { ____Placeholder_clnt_stat } clnt_stat ;


 int NLM4_FREE_ALL ;
 int NLM_PROG ;
 int NLM_VERS4 ;
 int RPC_SUCCESS ;
 int clnt_perrno (int) ;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 scalar_t__ geteuid () ;
 int rpc_call (char*,int ,int ,int ,int ,void*,int ,int *,int *) ;
 int stderr ;
 scalar_t__ xdr_nlm4_notify ;
 scalar_t__ xdr_void ;

int
main(int argc, char **argv)
{
 enum clnt_stat stat;
 char *hostname;
 nlm4_notify notify;

 if (argc != 2) {
  fprintf(stderr, "Usage: clear_locks <hostname>\n");
  exit(1);
 }
 hostname = argv[1];

 if (geteuid() != 0) {
  fprintf(stderr, "clear_locks: must be root\n");
  exit(1);
 }

 notify.name = hostname;
 notify.state = 0;
 stat = rpc_call("localhost", NLM_PROG, NLM_VERS4, NLM4_FREE_ALL,
     (xdrproc_t) xdr_nlm4_notify, (void *) &notify,
     (xdrproc_t) xdr_void, ((void*)0), ((void*)0));

 if (stat != RPC_SUCCESS) {
  clnt_perrno(stat);
  exit(1);
 }
 fprintf(stderr, "clear_locks: cleared locks for hostname %s\n",
     hostname);

 return (0);
}
