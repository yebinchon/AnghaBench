
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nfsd_dumplist {int ndl_size; void* ndl_list; } ;
typedef int nbuf ;
struct TYPE_5__ {int nclid_idlen; int* nclid_id; } ;
struct TYPE_4__ {int sin6_addr; int sin_addr; } ;
struct TYPE_6__ {int ndcl_nopenowners; int ndcl_nopens; int ndcl_nlockowners; int ndcl_nlocks; int ndcl_ndelegs; int ndcl_nolddelegs; int ndcl_addrfam; TYPE_2__ ndcl_clid; TYPE_1__ ndcl_cbaddr; int ndcl_flags; } ;




 int DUMPSIZE ;
 int INET6_ADDRSTRLEN ;
 int NFSSVC_DUMPCLIENTS ;
 char* client_flags (int ) ;
 TYPE_3__* dp ;
 int errx (int,char*) ;
 char* inet_ntoa (int ) ;
 int * inet_ntop (int const,int *,char*,int) ;
 scalar_t__ nfssvc (int ,struct nfsd_dumplist*) ;
 int printf (char*,...) ;

__attribute__((used)) static void
dump_openstate(void)
{
 struct nfsd_dumplist dumplist;
 int cnt, i;




 dumplist.ndl_size = DUMPSIZE;
 dumplist.ndl_list = (void *)dp;
 if (nfssvc(NFSSVC_DUMPCLIENTS, &dumplist) < 0)
  errx(1, "Can't perform dump clients syscall");

 printf("%-13s %9.9s %9.9s %9.9s %9.9s %9.9s %9.9s %-45s %s\n",
     "Flags", "OpenOwner", "Open", "LockOwner",
     "Lock", "Deleg", "OldDeleg", "Clientaddr", "ClientID");



 cnt = 0;
 while (dp[cnt].ndcl_clid.nclid_idlen > 0 && cnt < DUMPSIZE) {
  printf("%-13s ", client_flags(dp[cnt].ndcl_flags));
  printf("%9d %9d %9d %9d %9d %9d ",
      dp[cnt].ndcl_nopenowners,
      dp[cnt].ndcl_nopens,
      dp[cnt].ndcl_nlockowners,
      dp[cnt].ndcl_nlocks,
      dp[cnt].ndcl_ndelegs,
      dp[cnt].ndcl_nolddelegs);
  switch (dp[cnt].ndcl_addrfam) {
  }
  for (i = 0; i < dp[cnt].ndcl_clid.nclid_idlen; i++)
   printf("%02x", dp[cnt].ndcl_clid.nclid_id[i]);
  printf("\n");
  cnt++;
 }
}
