
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct libalias {int dummy; } ;
struct in_addr {int dummy; } ;
struct alias_link {int flags; } ;


 struct alias_link* AddLink (struct libalias*,struct in_addr,struct in_addr,struct in_addr,int ,int ,int ,int ) ;
 int LIBALIAS_LOCK (struct libalias*) ;
 int LIBALIAS_UNLOCK (struct libalias*) ;
 int LINK_PERMANENT ;
 int NO_DEST_PORT ;
 int NO_SRC_PORT ;
 int fprintf (int ,char*) ;
 int stderr ;

struct alias_link *
LibAliasRedirectProto(struct libalias *la, struct in_addr src_addr,
    struct in_addr dst_addr,
    struct in_addr alias_addr,
    u_char proto)
{
 struct alias_link *lnk;

 LIBALIAS_LOCK(la);
 lnk = AddLink(la, src_addr, dst_addr, alias_addr,
     NO_SRC_PORT, NO_DEST_PORT, 0,
     proto);

 if (lnk != ((void*)0)) {
  lnk->flags |= LINK_PERMANENT;
 }







 LIBALIAS_UNLOCK(la);
 return (lnk);
}
