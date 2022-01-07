
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
typedef int u_char ;
struct libalias {int dummy; } ;
struct in_addr {int dummy; } ;
struct alias_link {int flags; } ;


 struct alias_link* AddLink (struct libalias*,struct in_addr,struct in_addr,struct in_addr,int ,int ,int ,int) ;



 int LIBALIAS_LOCK (struct libalias*) ;
 int LIBALIAS_UNLOCK (struct libalias*) ;
 int LINK_PERMANENT ;
 int LINK_SCTP ;
 int LINK_TCP ;
 int LINK_UDP ;
 int fprintf (int ,char*) ;
 int stderr ;

struct alias_link *
LibAliasRedirectPort(struct libalias *la, struct in_addr src_addr, u_short src_port,
    struct in_addr dst_addr, u_short dst_port,
    struct in_addr alias_addr, u_short alias_port,
    u_char proto)
{
 int link_type;
 struct alias_link *lnk;

 LIBALIAS_LOCK(la);
 switch (proto) {
 case 128:
  link_type = LINK_UDP;
  break;
 case 129:
  link_type = LINK_TCP;
  break;
 case 130:
  link_type = LINK_SCTP;
  break;
 default:




  lnk = ((void*)0);
  goto getout;
 }

 lnk = AddLink(la, src_addr, dst_addr, alias_addr,
     src_port, dst_port, alias_port,
     link_type);

 if (lnk != ((void*)0)) {
  lnk->flags |= LINK_PERMANENT;
 }







getout:
 LIBALIAS_UNLOCK(la);
 return (lnk);
}
