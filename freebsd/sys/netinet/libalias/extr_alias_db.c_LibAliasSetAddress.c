
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_addr {scalar_t__ s_addr; } ;
struct libalias {int packetAliasMode; struct in_addr aliasAddress; } ;


 int CleanupAliasData (struct libalias*) ;
 int LIBALIAS_LOCK (struct libalias*) ;
 int LIBALIAS_UNLOCK (struct libalias*) ;
 int PKT_ALIAS_RESET_ON_ADDR_CHANGE ;

void
LibAliasSetAddress(struct libalias *la, struct in_addr addr)
{

 LIBALIAS_LOCK(la);
 if (la->packetAliasMode & PKT_ALIAS_RESET_ON_ADDR_CHANGE
     && la->aliasAddress.s_addr != addr.s_addr)
  CleanupAliasData(la);

 la->aliasAddress = addr;
 LIBALIAS_UNLOCK(la);
}
