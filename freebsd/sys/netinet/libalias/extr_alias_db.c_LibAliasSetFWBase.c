
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libalias {unsigned int fireWallBaseNum; unsigned int fireWallNumNums; } ;


 int LIBALIAS_LOCK (struct libalias*) ;
 int LIBALIAS_UNLOCK (struct libalias*) ;

void
LibAliasSetFWBase(struct libalias *la, unsigned int base, unsigned int num)
{

 LIBALIAS_LOCK(la);

 la->fireWallBaseNum = base;
 la->fireWallNumNums = num;

 LIBALIAS_UNLOCK(la);
}
