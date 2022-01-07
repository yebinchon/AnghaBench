
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int16_t ;
struct libalias {int dummy; } ;
struct in_addr {int dummy; } ;
struct alias_link {int dummy; } ;


 struct alias_link* FindLinkIn (struct libalias*,struct in_addr,struct in_addr,int ,int ,int ,int ) ;
 int LIBALIAS_LOCK_ASSERT (struct libalias*) ;
 int LINK_PPTP ;

struct alias_link *
FindPptpInByPeerCallId(struct libalias *la, struct in_addr dst_addr,
    struct in_addr alias_addr,
    u_int16_t alias_call_id)
{
 struct alias_link *lnk;

 LIBALIAS_LOCK_ASSERT(la);
 lnk = FindLinkIn(la, dst_addr, alias_addr,
     0 , alias_call_id,
     LINK_PPTP, 0);


 return (lnk);
}
