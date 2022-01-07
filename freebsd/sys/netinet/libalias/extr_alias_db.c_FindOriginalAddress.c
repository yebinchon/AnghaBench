
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct in_addr {scalar_t__ s_addr; } ;
struct libalias {int newDefaultLink; struct in_addr aliasAddress; struct in_addr targetAddress; int nullAddress; } ;
struct alias_link {struct in_addr src_addr; TYPE_1__* server; } ;
struct TYPE_2__ {struct TYPE_2__* next; struct in_addr addr; } ;


 struct alias_link* FindLinkIn (struct libalias*,int ,struct in_addr,int ,int ,int ,int ) ;
 scalar_t__ INADDR_ANY ;
 scalar_t__ INADDR_NONE ;
 int LIBALIAS_LOCK_ASSERT (struct libalias*) ;
 int LINK_ADDR ;

struct in_addr
FindOriginalAddress(struct libalias *la, struct in_addr alias_addr)
{
 struct alias_link *lnk;

 LIBALIAS_LOCK_ASSERT(la);
 lnk = FindLinkIn(la, la->nullAddress, alias_addr,
     0, 0, LINK_ADDR, 0);
 if (lnk == ((void*)0)) {
  la->newDefaultLink = 1;
  if (la->targetAddress.s_addr == INADDR_ANY)
   return (alias_addr);
  else if (la->targetAddress.s_addr == INADDR_NONE)
   return (la->aliasAddress.s_addr != INADDR_ANY) ?
       la->aliasAddress : alias_addr;
  else
   return (la->targetAddress);
 } else {
  if (lnk->server != ((void*)0)) {
   struct in_addr src_addr;

   src_addr = lnk->server->addr;
   lnk->server = lnk->server->next;
   return (src_addr);
  } else if (lnk->src_addr.s_addr == INADDR_ANY)
   return (la->aliasAddress.s_addr != INADDR_ANY) ?
       la->aliasAddress : alias_addr;
  else
   return (lnk->src_addr);
 }
}
