
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int16_t ;
struct libalias {int deleteAllLinks; } ;
struct alias_link {int link_type; int alias_port; int src_port; int alias_addr; int dst_addr; int src_addr; struct libalias* la; } ;


 int LIBALIAS_LOCK_ASSERT (struct libalias*) ;
 int ReLink (struct alias_link*,int ,int ,int ,int ,int ,int ,int ) ;

void
SetDestCallId(struct alias_link *lnk, u_int16_t cid)
{
 struct libalias *la = lnk->la;

 LIBALIAS_LOCK_ASSERT(la);
 la->deleteAllLinks = 1;
 ReLink(lnk, lnk->src_addr, lnk->dst_addr, lnk->alias_addr,
     lnk->src_port, cid, lnk->alias_port, lnk->link_type);
 la->deleteAllLinks = 0;
}
