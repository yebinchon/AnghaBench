
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct netconfig {int * nc_netid; } ;
typedef size_t rpcvers_t ;
typedef scalar_t__ rpcprog_t ;
struct TYPE_3__ {scalar_t__ prog; size_t vers; int failure; int success; struct TYPE_3__* next; int * netid; } ;
typedef TYPE_1__ rpcbs_addrlist ;
struct TYPE_4__ {TYPE_1__* addrinfo; } ;


 size_t RPCBVERS_STAT ;
 TYPE_2__* inf ;
 scalar_t__ malloc (int) ;
 struct netconfig* rpcbind_get_conf (char*) ;
 scalar_t__ strcmp (int *,char*) ;

void
rpcbs_getaddr(rpcvers_t rtype, rpcprog_t prog, rpcvers_t vers, char *netid,
       char *uaddr)
{
 rpcbs_addrlist *al;
 struct netconfig *nconf;

 if (rtype >= RPCBVERS_STAT)
  return;
 for (al = inf[rtype].addrinfo; al; al = al->next) {

  if(al->netid == ((void*)0))
   return;
  if ((al->prog == prog) && (al->vers == vers) &&
      (strcmp(al->netid, netid) == 0)) {
   if ((uaddr == ((void*)0)) || (uaddr[0] == 0))
    al->failure++;
   else
    al->success++;
   return;
  }
 }
 nconf = rpcbind_get_conf(netid);
 if (nconf == ((void*)0)) {
  return;
 }
 al = (rpcbs_addrlist *) malloc(sizeof (rpcbs_addrlist));
 if (al == ((void*)0)) {
  return;
 }
 al->prog = prog;
 al->vers = vers;
 al->netid = nconf->nc_netid;
 if ((uaddr == ((void*)0)) || (uaddr[0] == 0)) {
  al->failure = 1;
  al->success = 0;
 } else {
  al->failure = 0;
  al->success = 1;
 }
 al->next = inf[rtype].addrinfo;
 inf[rtype].addrinfo = al;
}
