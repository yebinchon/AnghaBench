
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libalias {int dummy; } ;
struct alias_link {int flags; } ;


 int LIBALIAS_LOCK (struct libalias*) ;
 int LIBALIAS_UNLOCK (struct libalias*) ;
 int LINK_PARTIALLY_SPECIFIED ;
 int LINK_PERMANENT ;

int
LibAliasRedirectDynamic(struct libalias *la, struct alias_link *lnk)
{
 int res;

 LIBALIAS_LOCK(la);
 (void)la;

 if (lnk->flags & LINK_PARTIALLY_SPECIFIED)
  res = -1;
 else {
  lnk->flags &= ~LINK_PERMANENT;
  res = 0;
 }
 LIBALIAS_UNLOCK(la);
 return (res);
}
