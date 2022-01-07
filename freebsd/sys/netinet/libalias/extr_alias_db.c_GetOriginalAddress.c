
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct in_addr {scalar_t__ s_addr; } ;
struct alias_link {struct in_addr src_addr; TYPE_1__* la; } ;
struct TYPE_2__ {struct in_addr aliasAddress; } ;


 scalar_t__ INADDR_ANY ;

struct in_addr
GetOriginalAddress(struct alias_link *lnk)
{
 if (lnk->src_addr.s_addr == INADDR_ANY)
  return (lnk->la->aliasAddress);
 else
  return (lnk->src_addr);
}
