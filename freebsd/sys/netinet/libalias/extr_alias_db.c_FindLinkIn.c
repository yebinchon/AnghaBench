
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_short ;
struct in_addr {scalar_t__ s_addr; } ;
struct TYPE_2__ {scalar_t__ s_addr; } ;
struct libalias {struct in_addr nullAddress; TYPE_1__ aliasAddress; } ;
struct alias_link {int dummy; } ;


 scalar_t__ INADDR_ANY ;
 int LIBALIAS_LOCK_ASSERT (struct libalias*) ;
 struct alias_link* _FindLinkIn (struct libalias*,struct in_addr,struct in_addr,int ,int ,int,int) ;

__attribute__((used)) static struct alias_link *
FindLinkIn(struct libalias *la, struct in_addr dst_addr,
    struct in_addr alias_addr,
    u_short dst_port,
    u_short alias_port,
    int link_type,
    int replace_partial_links)
{
 struct alias_link *lnk;

 LIBALIAS_LOCK_ASSERT(la);
 lnk = _FindLinkIn(la, dst_addr, alias_addr, dst_port, alias_port,
     link_type, replace_partial_links);

 if (lnk == ((void*)0)) {






  if (la->aliasAddress.s_addr != INADDR_ANY &&
      alias_addr.s_addr == la->aliasAddress.s_addr) {
   lnk = _FindLinkIn(la, dst_addr, la->nullAddress, dst_port, alias_port,
       link_type, replace_partial_links);
  }
 }
 return (lnk);
}
