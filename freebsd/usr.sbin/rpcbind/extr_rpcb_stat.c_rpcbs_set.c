
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t rpcvers_t ;
typedef scalar_t__ bool_t ;
struct TYPE_2__ {int setinfo; } ;


 scalar_t__ FALSE ;
 size_t RPCBVERS_STAT ;
 TYPE_1__* inf ;

void
rpcbs_set(rpcvers_t rtype, bool_t success)
{
 if ((rtype >= RPCBVERS_STAT) || (success == FALSE))
  return;
 inf[rtype].setinfo++;
 return;
}
