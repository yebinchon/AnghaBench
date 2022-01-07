
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rpcent {char* r_name; } ;
typedef TYPE_1__* rpcbs_addrlist_ptr ;
struct TYPE_5__ {TYPE_1__* addrinfo; } ;
typedef TYPE_2__ rpcb_stat ;
struct TYPE_4__ {int prog; int vers; char* netid; int success; int failure; struct TYPE_4__* next; } ;


 struct rpcent* getrpcbynumber (int) ;
 int printf (char*,...) ;

__attribute__((used)) static void
print_getaddrstat(int rtype, rpcb_stat *infp)
{
 rpcbs_addrlist_ptr al;
 register struct rpcent *rpc;

 printf("prog\t\tvers\tnetid\t  success\tfailure\n");
 for (al = infp->addrinfo; al; al = al->next) {
  rpc = getrpcbynumber(al->prog);
  if (rpc)
   printf("%-16s", rpc->r_name);
  else
   printf("%-16d", al->prog);
  printf("%d\t%s\t  %-12d\t%d\n",
   al->vers, al->netid,
   al->success, al->failure);
 }
}
