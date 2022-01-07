
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct sockaddr {int dummy; } ;


 int EINVAL ;
 int * ng_btsocket_l2cap_node ;
 int ng_btsocket_l2cap_peeraddr (struct socket*,struct sockaddr**) ;

int
ng_btsocket_l2cap_accept(struct socket *so, struct sockaddr **nam)
{
 if (ng_btsocket_l2cap_node == ((void*)0))
  return (EINVAL);

 return (ng_btsocket_l2cap_peeraddr(so, nam));
}
