
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_2__* rpcblist_ptr ;
struct TYPE_8__ {unsigned int r_prog; int r_netid; int r_vers; } ;
struct TYPE_6__ {unsigned int r_prog; int r_netid; int r_vers; int r_addr; } ;
struct TYPE_7__ {TYPE_1__ rpcb_map; struct TYPE_7__* rpcb_next; } ;
typedef TYPE_3__ RPCB ;


 int free (int ) ;
 scalar_t__ is_bound (int ,int ) ;
 TYPE_2__* list_rbl ;
 int map_unset (TYPE_3__*,char*) ;
 int strdup (int ) ;

void
delete_prog(unsigned int prog)
{
 RPCB reg;
 register rpcblist_ptr rbl;

 for (rbl = list_rbl; rbl != ((void*)0); rbl = rbl->rpcb_next) {
  if ((rbl->rpcb_map.r_prog != prog))
   continue;
  if (is_bound(rbl->rpcb_map.r_netid, rbl->rpcb_map.r_addr))
   continue;
  reg.r_prog = rbl->rpcb_map.r_prog;
  reg.r_vers = rbl->rpcb_map.r_vers;
  reg.r_netid = strdup(rbl->rpcb_map.r_netid);
  (void) map_unset(&reg, "superuser");
  free(reg.r_netid);
 }
}
