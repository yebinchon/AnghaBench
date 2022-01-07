
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_addr {int dummy; } ;
struct libalias {struct in_addr aliasAddress; } ;


 int LIBALIAS_LOCK_ASSERT (struct libalias*) ;

void
SetDefaultAliasAddress(struct libalias *la, struct in_addr alias_addr)
{

 LIBALIAS_LOCK_ASSERT(la);
 la->aliasAddress = alias_addr;
}
