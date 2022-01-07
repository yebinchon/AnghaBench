
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int rpcvers_t ;
typedef size_t rpcproc_t ;
struct TYPE_2__ {int * info; } ;





 TYPE_1__* inf ;
 size_t rpcb_highproc_2 ;
 size_t rpcb_highproc_3 ;
 size_t rpcb_highproc_4 ;

void
rpcbs_procinfo(rpcvers_t rtype, rpcproc_t proc)
{
 switch (rtype + 2) {






 case 129:
  if (proc > rpcb_highproc_3)
   return;
  break;
 case 128:
  if (proc > rpcb_highproc_4)
   return;
  break;
 default: return;
 }
 inf[rtype].info[proc]++;
 return;
}
