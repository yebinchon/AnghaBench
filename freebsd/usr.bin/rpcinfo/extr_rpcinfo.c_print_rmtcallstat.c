
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rpcent {char* r_name; } ;
typedef TYPE_1__* rpcbs_rmtcalllist_ptr ;
struct TYPE_5__ {TYPE_1__* rmtinfo; } ;
typedef TYPE_2__ rpcb_stat ;
struct TYPE_4__ {int prog; int vers; int proc; char* netid; int indirect; int success; int failure; struct TYPE_4__* next; } ;


 int RPCBVERS_4_STAT ;
 struct rpcent* getrpcbynumber (int) ;
 int printf (char*,...) ;

__attribute__((used)) static void
print_rmtcallstat(int rtype, rpcb_stat *infp)
{
 register rpcbs_rmtcalllist_ptr pr;
 struct rpcent *rpc;

 if (rtype == RPCBVERS_4_STAT)
  printf(
  "prog\t\tvers\tproc\tnetid\tindirect success failure\n");
 else
  printf("prog\t\tvers\tproc\tnetid\tsuccess\tfailure\n");
 for (pr = infp->rmtinfo; pr; pr = pr->next) {
  rpc = getrpcbynumber(pr->prog);
  if (rpc)
   printf("%-16s", rpc->r_name);
  else
   printf("%-16d", pr->prog);
  printf("%d\t%d\t%s\t",
   pr->vers, pr->proc, pr->netid);
  if (rtype == RPCBVERS_4_STAT)
   printf("%d\t ", pr->indirect);
  printf("%d\t%d\n", pr->success, pr->failure);
 }
}
