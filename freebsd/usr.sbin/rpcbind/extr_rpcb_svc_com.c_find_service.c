
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ rpcvers_t ;
typedef scalar_t__ rpcprog_t ;
typedef TYPE_2__* rpcblist_ptr ;
struct TYPE_5__ {scalar_t__ r_prog; scalar_t__ r_vers; int * r_netid; } ;
struct TYPE_6__ {TYPE_1__ rpcb_map; struct TYPE_6__* rpcb_next; } ;


 TYPE_2__* list_rbl ;
 scalar_t__ strcasecmp (int *,char*) ;

__attribute__((used)) static rpcblist_ptr
find_service(rpcprog_t prog, rpcvers_t vers, char *netid)
{
 register rpcblist_ptr hit = ((void*)0);
 register rpcblist_ptr rbl;

 for (rbl = list_rbl; rbl != ((void*)0); rbl = rbl->rpcb_next) {
  if ((rbl->rpcb_map.r_prog != prog) ||
      ((rbl->rpcb_map.r_netid != ((void*)0)) &&
   (strcasecmp(rbl->rpcb_map.r_netid, netid) != 0)))
   continue;
  hit = rbl;
  if (rbl->rpcb_map.r_vers == vers)
   break;
 }
 return (hit);
}
