
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u_short ;
struct libalias {int packetAliasMode; } ;
struct alias_link {int flags; void* alias_port; int link_type; int sockfd; int dst_port; int alias_addr; int dst_addr; void* src_port; } ;


 scalar_t__ ALIAS_PORT_BASE ;
 int ALIAS_PORT_MASK ;
 struct alias_link* FindLinkIn (struct libalias*,int ,int ,int ,void*,int ,int ) ;
 int GET_ALIAS_PORT ;
 int GET_NEW_PORT_MAX_ATTEMPTS ;
 scalar_t__ GetSocket (struct libalias*,void*,int *,int ) ;
 int LIBALIAS_LOCK_ASSERT (struct libalias*) ;
 int LINK_PARTIALLY_SPECIFIED ;
 int LINK_TCP ;
 int LINK_UDP ;
 int PKT_ALIAS_SAME_PORTS ;
 int PKT_ALIAS_USE_SOCKETS ;
 int arc4random () ;
 int fprintf (int ,char*) ;
 void* htons (void*) ;
 void* ntohs (void*) ;
 int stderr ;

__attribute__((used)) static int
GetNewPort(struct libalias *la, struct alias_link *lnk, int alias_port_param)
{
 int i;
 int max_trials;
 u_short port_sys;
 u_short port_net;

 LIBALIAS_LOCK_ASSERT(la);
 if (alias_port_param == GET_ALIAS_PORT) {




  max_trials = GET_NEW_PORT_MAX_ATTEMPTS;

  if (la->packetAliasMode & PKT_ALIAS_SAME_PORTS) {






   port_net = lnk->src_port;
   port_sys = ntohs(port_net);
  } else {

   port_sys = arc4random() & ALIAS_PORT_MASK;
   port_sys += ALIAS_PORT_BASE;
   port_net = htons(port_sys);
  }
 } else if (alias_port_param >= 0 && alias_port_param < 0x10000) {
  lnk->alias_port = (u_short) alias_port_param;
  return (0);
 } else {




  return (-1);
 }



 for (i = 0; i < max_trials; i++) {
  int go_ahead;
  struct alias_link *search_result;

  search_result = FindLinkIn(la, lnk->dst_addr, lnk->alias_addr,
      lnk->dst_port, port_net,
      lnk->link_type, 0);

  if (search_result == ((void*)0))
   go_ahead = 1;
  else if (!(lnk->flags & LINK_PARTIALLY_SPECIFIED)
      && (search_result->flags & LINK_PARTIALLY_SPECIFIED))
   go_ahead = 1;
  else
   go_ahead = 0;

  if (go_ahead) {

   if ((la->packetAliasMode & PKT_ALIAS_USE_SOCKETS)
       && (lnk->flags & LINK_PARTIALLY_SPECIFIED)
       && ((lnk->link_type == LINK_TCP) ||
       (lnk->link_type == LINK_UDP))) {
    if (GetSocket(la, port_net, &lnk->sockfd, lnk->link_type)) {
     lnk->alias_port = port_net;
     return (0);
    }
   } else {

    lnk->alias_port = port_net;
    return (0);

   }

  }
  port_sys = arc4random() & ALIAS_PORT_MASK;
  port_sys += ALIAS_PORT_BASE;
  port_net = htons(port_sys);
 }






 return (-1);
}
