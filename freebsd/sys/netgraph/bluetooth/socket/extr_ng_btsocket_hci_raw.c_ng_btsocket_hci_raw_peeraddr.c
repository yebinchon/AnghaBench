
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct sockaddr {int dummy; } ;


 int ng_btsocket_hci_raw_sockaddr (struct socket*,struct sockaddr**) ;

int
ng_btsocket_hci_raw_peeraddr(struct socket *so, struct sockaddr **nam)
{
 return (ng_btsocket_hci_raw_sockaddr(so, nam));
}
