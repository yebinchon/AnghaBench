
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct libalias {int dummy; } ;
struct in_addr {int dummy; } ;
struct alias_link {int dummy; } ;


 struct alias_link* AddLink (struct libalias*,struct in_addr,struct in_addr,struct in_addr,int ,int ,int ,int ) ;
 struct in_addr FindAliasAddress (struct libalias*,struct in_addr) ;
 struct alias_link* FindLinkOut (struct libalias*,struct in_addr,struct in_addr,int ,int ,int ,int) ;
 int LIBALIAS_LOCK_ASSERT (struct libalias*) ;
 int NO_DEST_PORT ;
 int NO_SRC_PORT ;

struct alias_link *
FindProtoOut(struct libalias *la, struct in_addr src_addr,
    struct in_addr dst_addr,
    u_char proto)
{
 struct alias_link *lnk;

 LIBALIAS_LOCK_ASSERT(la);
 lnk = FindLinkOut(la, src_addr, dst_addr,
     NO_SRC_PORT, NO_DEST_PORT,
     proto, 1);

 if (lnk == ((void*)0)) {
  struct in_addr alias_addr;

  alias_addr = FindAliasAddress(la, src_addr);
  lnk = AddLink(la, src_addr, dst_addr, alias_addr,
      NO_SRC_PORT, NO_DEST_PORT, 0,
      proto);
 }
 return (lnk);
}
