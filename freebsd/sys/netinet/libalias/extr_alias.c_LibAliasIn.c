
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libalias {int dummy; } ;


 int LIBALIAS_LOCK (struct libalias*) ;
 int LIBALIAS_UNLOCK (struct libalias*) ;
 int LibAliasInLocked (struct libalias*,char*,int) ;

int
LibAliasIn(struct libalias *la, char *ptr, int maxpacketsize)
{
 int res;

 LIBALIAS_LOCK(la);
 res = LibAliasInLocked(la, ptr, maxpacketsize);
 LIBALIAS_UNLOCK(la);
 return (res);
}
