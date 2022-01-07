
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
typedef int u_char ;
struct libalias {int packetAliasMode; } ;
struct in_addr {int dummy; } ;
struct alias_link {int dummy; } ;


 struct alias_link* AddLink (struct libalias*,struct in_addr,struct in_addr,struct in_addr,int ,int ,int ,int) ;
 struct alias_link* FindLinkIn (struct libalias*,struct in_addr,struct in_addr,int ,int ,int,int) ;
 struct in_addr FindOriginalAddress (struct libalias*,struct in_addr) ;


 int LIBALIAS_LOCK_ASSERT (struct libalias*) ;
 int LINK_TCP ;
 int LINK_UDP ;
 int PKT_ALIAS_DENY_INCOMING ;

struct alias_link *
FindUdpTcpIn(struct libalias *la, struct in_addr dst_addr,
    struct in_addr alias_addr,
    u_short dst_port,
    u_short alias_port,
    u_char proto,
    int create)
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

 lnk = FindLinkIn(la, dst_addr, alias_addr,
     dst_port, alias_port,
     link_type, create);

 if (lnk == ((void*)0) && create && !(la->packetAliasMode & PKT_ALIAS_DENY_INCOMING)) {
  struct in_addr target_addr;

  target_addr = FindOriginalAddress(la, alias_addr);
  lnk = AddLink(la, target_addr, dst_addr, alias_addr,
      alias_port, dst_port, alias_port,
      link_type);
 }
 return (lnk);
}
