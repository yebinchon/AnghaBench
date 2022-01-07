
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
typedef int u_char ;
struct libalias {int dummy; } ;
struct in_addr {int dummy; } ;
struct alias_link {int dummy; } ;


 struct alias_link* AddLink (struct libalias*,struct in_addr,struct in_addr,struct in_addr,int ,int ,int ,int) ;
 struct in_addr FindAliasAddress (struct libalias*,struct in_addr) ;
 struct alias_link* FindLinkOut (struct libalias*,struct in_addr,struct in_addr,int ,int ,int,int) ;


 int LIBALIAS_LOCK_ASSERT (struct libalias*) ;
 int LINK_TCP ;
 int LINK_UDP ;

struct alias_link *
FindRtspOut(struct libalias *la, struct in_addr src_addr,
    struct in_addr dst_addr,
    u_short src_port,
    u_short alias_port,
    u_char proto)
{
 int link_type;
 struct alias_link *lnk;

 LIBALIAS_LOCK_ASSERT(la);
 switch (proto) {
 case 128:
  link_type = LINK_UDP;
  break;
 case 129:
  link_type = LINK_TCP;
  break;
 default:
  return (((void*)0));
  break;
 }

 lnk = FindLinkOut(la, src_addr, dst_addr, src_port, 0, link_type, 1);

 if (lnk == ((void*)0)) {
  struct in_addr alias_addr;

  alias_addr = FindAliasAddress(la, src_addr);
  lnk = AddLink(la, src_addr, dst_addr, alias_addr,
      src_port, 0, alias_port,
      link_type);
 }
 return (lnk);
}
