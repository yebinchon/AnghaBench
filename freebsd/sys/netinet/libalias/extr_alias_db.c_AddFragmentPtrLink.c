
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
struct libalias {int nullAddress; } ;
struct in_addr {int dummy; } ;
struct alias_link {int dummy; } ;


 struct alias_link* AddLink (struct libalias*,int ,struct in_addr,int ,int ,int ,int ,int ) ;
 int LIBALIAS_LOCK_ASSERT (struct libalias*) ;
 int LINK_FRAGMENT_PTR ;
 int NO_DEST_PORT ;
 int NO_SRC_PORT ;

struct alias_link *
AddFragmentPtrLink(struct libalias *la, struct in_addr dst_addr,
    u_short ip_id)
{

 LIBALIAS_LOCK_ASSERT(la);
 return AddLink(la, la->nullAddress, dst_addr, la->nullAddress,
     NO_SRC_PORT, NO_DEST_PORT, ip_id,
     LINK_FRAGMENT_PTR);
}
