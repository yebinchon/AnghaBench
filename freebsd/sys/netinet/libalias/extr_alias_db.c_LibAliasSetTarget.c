
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_addr {int dummy; } ;
struct libalias {struct in_addr targetAddress; } ;


 int LIBALIAS_LOCK (struct libalias*) ;
 int LIBALIAS_UNLOCK (struct libalias*) ;

void
LibAliasSetTarget(struct libalias *la, struct in_addr target_addr)
{

 LIBALIAS_LOCK(la);
 la->targetAddress = target_addr;
 LIBALIAS_UNLOCK(la);
}
