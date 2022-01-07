
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* rpcb_entry_list_ptr ;
struct TYPE_4__ {scalar_t__ r_maddr; } ;
struct TYPE_5__ {TYPE_1__ rpcb_entry_map; struct TYPE_5__* rpcb_entry_next; } ;


 int free (char*) ;

__attribute__((used)) static void
free_rpcb_entry_list(rpcb_entry_list_ptr *rlistp)
{
 register rpcb_entry_list_ptr rbl, tmp;

 for (rbl = *rlistp; rbl != ((void*)0); ) {
  tmp = rbl;
  rbl = rbl->rpcb_entry_next;
  free((char *)tmp->rpcb_entry_map.r_maddr);
  free((char *)tmp);
 }
 *rlistp = ((void*)0);
}
