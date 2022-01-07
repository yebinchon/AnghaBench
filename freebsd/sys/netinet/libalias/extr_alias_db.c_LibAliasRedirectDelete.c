
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libalias {int deleteAllLinks; } ;
struct alias_link {int dummy; } ;


 int DeleteLink (struct alias_link*) ;
 int LIBALIAS_LOCK (struct libalias*) ;
 int LIBALIAS_UNLOCK (struct libalias*) ;

void
LibAliasRedirectDelete(struct libalias *la, struct alias_link *lnk)
{



 LIBALIAS_LOCK(la);
 la->deleteAllLinks = 1;
 DeleteLink(lnk);
 la->deleteAllLinks = 0;
 LIBALIAS_UNLOCK(la);
}
