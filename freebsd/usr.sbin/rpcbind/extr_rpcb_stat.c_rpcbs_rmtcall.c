
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct netconfig {int * nc_netid; } ;
typedef size_t rpcvers_t ;
typedef scalar_t__ rpcprog_t ;
typedef scalar_t__ rpcproc_t ;
struct TYPE_7__ {scalar_t__ prog; size_t vers; scalar_t__ proc; int failure; int success; int indirect; struct TYPE_7__* next; int * netid; } ;
typedef TYPE_2__ rpcbs_rmtcalllist ;
typedef TYPE_3__* rpcblist_ptr ;
struct TYPE_9__ {TYPE_2__* rmtinfo; } ;
struct TYPE_6__ {size_t r_vers; } ;
struct TYPE_8__ {TYPE_1__ rpcb_map; } ;


 scalar_t__ RPCBPROC_INDIRECT ;
 size_t RPCBVERS_STAT ;
 TYPE_5__* inf ;
 scalar_t__ malloc (int) ;
 struct netconfig* rpcbind_get_conf (char*) ;
 scalar_t__ strcmp (int *,char*) ;

void
rpcbs_rmtcall(rpcvers_t rtype, rpcproc_t rpcbproc, rpcprog_t prog,
       rpcvers_t vers, rpcproc_t proc, char *netid, rpcblist_ptr rbl)
{
 rpcbs_rmtcalllist *rl;
 struct netconfig *nconf;

 if (rtype >= RPCBVERS_STAT)
  return;
 for (rl = inf[rtype].rmtinfo; rl; rl = rl->next) {

  if(rl->netid == ((void*)0))
   return;

  if ((rl->prog == prog) && (rl->vers == vers) &&
      (rl->proc == proc) &&
      (strcmp(rl->netid, netid) == 0)) {
   if ((rbl == ((void*)0)) ||
       (rbl->rpcb_map.r_vers != vers))
    rl->failure++;
   else
    rl->success++;
   if (rpcbproc == RPCBPROC_INDIRECT)
    rl->indirect++;
   return;
  }
 }
 nconf = rpcbind_get_conf(netid);
 if (nconf == ((void*)0)) {
  return;
 }
 rl = (rpcbs_rmtcalllist *) malloc(sizeof (rpcbs_rmtcalllist));
 if (rl == ((void*)0)) {
  return;
 }
 rl->prog = prog;
 rl->vers = vers;
 rl->proc = proc;
 rl->netid = nconf->nc_netid;
 if ((rbl == ((void*)0)) ||
      (rbl->rpcb_map.r_vers != vers)) {
  rl->failure = 1;
  rl->success = 0;
 } else {
  rl->failure = 0;
  rl->success = 1;
 }
 rl->indirect = 1;
 rl->next = inf[rtype].rmtinfo;
 inf[rtype].rmtinfo = rl;
 return;
}
