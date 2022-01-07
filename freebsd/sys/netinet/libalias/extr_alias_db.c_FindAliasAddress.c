
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_addr {scalar_t__ s_addr; } ;
struct libalias {struct in_addr aliasAddress; int nullAddress; } ;
struct alias_link {struct in_addr alias_addr; } ;


 struct alias_link* FindLinkOut (struct libalias*,struct in_addr,int ,int ,int ,int ,int ) ;
 scalar_t__ INADDR_ANY ;
 int LIBALIAS_LOCK_ASSERT (struct libalias*) ;
 int LINK_ADDR ;

struct in_addr
FindAliasAddress(struct libalias *la, struct in_addr original_addr)
{
 struct alias_link *lnk;

 LIBALIAS_LOCK_ASSERT(la);
 lnk = FindLinkOut(la, original_addr, la->nullAddress,
     0, 0, LINK_ADDR, 0);
 if (lnk == ((void*)0)) {
  return (la->aliasAddress.s_addr != INADDR_ANY) ?
      la->aliasAddress : original_addr;
 } else {
  if (lnk->alias_addr.s_addr == INADDR_ANY)
   return (la->aliasAddress.s_addr != INADDR_ANY) ?
       la->aliasAddress : original_addr;
  else
   return (lnk->alias_addr);
 }
}
