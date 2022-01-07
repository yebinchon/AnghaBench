
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
struct libalias {int nullAddress; } ;
struct in_addr {int dummy; } ;
struct alias_link {int dummy; } ;


 struct alias_link* FindLinkIn (struct libalias*,struct in_addr,int ,int ,int ,int ,int ) ;
 int LIBALIAS_LOCK_ASSERT (struct libalias*) ;
 int LINK_FRAGMENT_PTR ;
 int NO_DEST_PORT ;

struct alias_link *
FindFragmentPtr(struct libalias *la, struct in_addr dst_addr,
    u_short ip_id)
{

 LIBALIAS_LOCK_ASSERT(la);
 return FindLinkIn(la, dst_addr, la->nullAddress,
     NO_DEST_PORT, ip_id,
     LINK_FRAGMENT_PTR, 0);
}
