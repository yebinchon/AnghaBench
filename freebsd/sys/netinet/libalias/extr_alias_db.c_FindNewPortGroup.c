
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
typedef int u_char ;
struct libalias {int packetAliasMode; } ;
struct in_addr {int dummy; } ;
struct alias_link {int dummy; } ;


 scalar_t__ ALIAS_PORT_BASE ;
 int ALIAS_PORT_MASK ;
 int ALIAS_PORT_MASK_EVEN ;
 int FIND_EVEN_ALIAS_BASE ;
 struct alias_link* FindLinkIn (struct libalias*,struct in_addr,struct in_addr,int,int,int,int ) ;
 int GET_NEW_PORT_MAX_ATTEMPTS ;


 int LIBALIAS_LOCK_ASSERT (struct libalias*) ;
 int LINK_TCP ;
 int LINK_UDP ;
 int PKT_ALIAS_SAME_PORTS ;
 int arc4random () ;
 int fprintf (int ,char*) ;
 int htons (int) ;
 int ntohs (int) ;
 int stderr ;

int
FindNewPortGroup(struct libalias *la,
    struct in_addr dst_addr,
    struct in_addr alias_addr,
    u_short src_port,
    u_short dst_port,
    u_short port_count,
    u_char proto,
    u_char align)
{
 int i, j;
 int max_trials;
 u_short port_sys;
 int link_type;

 LIBALIAS_LOCK_ASSERT(la);




 switch (proto) {
 case 128:
  link_type = LINK_UDP;
  break;
 case 129:
  link_type = LINK_TCP;
  break;
 default:
  return (0);
  break;
 }





 max_trials = GET_NEW_PORT_MAX_ATTEMPTS;

 if (la->packetAliasMode & PKT_ALIAS_SAME_PORTS) {





  port_sys = ntohs(src_port);

 } else {


  if (align == FIND_EVEN_ALIAS_BASE)
   port_sys = arc4random() & ALIAS_PORT_MASK_EVEN;
  else
   port_sys = arc4random() & ALIAS_PORT_MASK;

  port_sys += ALIAS_PORT_BASE;
 }


 for (i = 0; i < max_trials; i++) {

  struct alias_link *search_result;

  for (j = 0; j < port_count; j++)
   if ((search_result = FindLinkIn(la, dst_addr,
       alias_addr, dst_port, htons(port_sys + j),
       link_type, 0)) != ((void*)0))
    break;


  if (j == port_count)
   return (htons(port_sys));


  if (align == FIND_EVEN_ALIAS_BASE)
   port_sys = arc4random() & ALIAS_PORT_MASK_EVEN;
  else
   port_sys = arc4random() & ALIAS_PORT_MASK;

  port_sys += ALIAS_PORT_BASE;
 }






 return (0);
}
