
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_short ;
struct libalias {int dummy; } ;
struct in_addr {int dummy; } ;
struct TYPE_4__ {TYPE_1__* tcp; } ;
struct alias_link {scalar_t__ link_type; TYPE_2__ data; struct libalias* la; } ;
struct TYPE_3__ {scalar_t__ fwhole; } ;


 struct alias_link* AddLink (struct libalias*,struct in_addr,struct in_addr,struct in_addr,int ,int ,int,int) ;
 int DeleteLink (struct alias_link*) ;
 int LIBALIAS_LOCK_ASSERT (struct libalias*) ;
 scalar_t__ LINK_TCP ;
 int PunchFWHole (struct alias_link*) ;

__attribute__((used)) static struct alias_link *
ReLink(struct alias_link *old_lnk,
    struct in_addr src_addr,
    struct in_addr dst_addr,
    struct in_addr alias_addr,
    u_short src_port,
    u_short dst_port,
    int alias_port_param,
    int link_type)
{

 struct alias_link *new_lnk;
 struct libalias *la = old_lnk->la;

 LIBALIAS_LOCK_ASSERT(la);
 new_lnk = AddLink(la, src_addr, dst_addr, alias_addr,
     src_port, dst_port, alias_port_param,
     link_type);

 if (new_lnk != ((void*)0) &&
     old_lnk->link_type == LINK_TCP &&
     old_lnk->data.tcp->fwhole > 0) {
  PunchFWHole(new_lnk);
 }

 DeleteLink(old_lnk);
 return (new_lnk);
}
