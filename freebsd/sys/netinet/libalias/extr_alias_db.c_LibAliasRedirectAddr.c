
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libalias {int nullAddress; } ;
struct in_addr {int dummy; } ;
struct alias_link {int flags; } ;


 struct alias_link* AddLink (struct libalias*,struct in_addr,int ,struct in_addr,int ,int ,int ,int ) ;
 int LIBALIAS_LOCK (struct libalias*) ;
 int LIBALIAS_UNLOCK (struct libalias*) ;
 int LINK_ADDR ;
 int LINK_PERMANENT ;
 int fprintf (int ,char*) ;
 int stderr ;

struct alias_link *
LibAliasRedirectAddr(struct libalias *la, struct in_addr src_addr,
    struct in_addr alias_addr)
{
 struct alias_link *lnk;

 LIBALIAS_LOCK(la);
 lnk = AddLink(la, src_addr, la->nullAddress, alias_addr,
     0, 0, 0,
     LINK_ADDR);

 if (lnk != ((void*)0)) {
  lnk->flags |= LINK_PERMANENT;
 }







 LIBALIAS_UNLOCK(la);
 return (lnk);
}
