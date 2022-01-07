
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct netconfig {int nc_netid; } ;
struct netbuf {int dummy; } ;
typedef int rpcvers_t ;
typedef int rpcprog_t ;
typedef TYPE_2__* rpcblist_ptr ;
typedef int rpcblist ;
struct TYPE_5__ {void* r_owner; int r_addr; void* r_netid; int r_vers; int r_prog; } ;
struct TYPE_6__ {struct TYPE_6__* rpcb_next; TYPE_1__ rpcb_map; } ;


 int LOG_ERR ;
 int exit (int) ;
 TYPE_2__* list_rbl ;
 TYPE_2__* malloc (int) ;
 void* strdup (int ) ;
 int superuser ;
 int syslog (int ,char*) ;
 int taddr2uaddr (struct netconfig*,struct netbuf*) ;

__attribute__((used)) static void
rbllist_add(rpcprog_t prog, rpcvers_t vers, struct netconfig *nconf,
     struct netbuf *addr)
{
 rpcblist_ptr rbl;

 rbl = malloc(sizeof (rpcblist));
 if (rbl == ((void*)0)) {
  syslog(LOG_ERR, "no memory!");
  exit(1);
 }

 rbl->rpcb_map.r_prog = prog;
 rbl->rpcb_map.r_vers = vers;
 rbl->rpcb_map.r_netid = strdup(nconf->nc_netid);
 rbl->rpcb_map.r_addr = taddr2uaddr(nconf, addr);
 rbl->rpcb_map.r_owner = strdup(superuser);
 rbl->rpcb_next = list_rbl;
 list_rbl = rbl;
}
