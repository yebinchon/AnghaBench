
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libalias {int newDefaultLink; } ;


 int LIBALIAS_LOCK (struct libalias*) ;
 int LIBALIAS_UNLOCK (struct libalias*) ;

int
LibAliasCheckNewLink(struct libalias *la)
{
 int res;

 LIBALIAS_LOCK(la);
 res = la->newDefaultLink;
 LIBALIAS_UNLOCK(la);
 return (res);
}
