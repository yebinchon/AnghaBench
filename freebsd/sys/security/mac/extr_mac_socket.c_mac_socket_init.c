
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int * so_peerlabel; int * so_label; } ;


 int ENOMEM ;
 int MPC_OBJECT_SOCKET ;
 int mac_labeled ;
 int * mac_socket_label_alloc (int) ;
 int mac_socket_label_free (int *) ;
 int * mac_socketpeer_label_alloc (int) ;

int
mac_socket_init(struct socket *so, int flag)
{

 if (mac_labeled & MPC_OBJECT_SOCKET) {
  so->so_label = mac_socket_label_alloc(flag);
  if (so->so_label == ((void*)0))
   return (ENOMEM);
  so->so_peerlabel = mac_socketpeer_label_alloc(flag);
  if (so->so_peerlabel == ((void*)0)) {
   mac_socket_label_free(so->so_label);
   so->so_label = ((void*)0);
   return (ENOMEM);
  }
 } else {
  so->so_label = ((void*)0);
  so->so_peerlabel = ((void*)0);
 }
 return (0);
}
