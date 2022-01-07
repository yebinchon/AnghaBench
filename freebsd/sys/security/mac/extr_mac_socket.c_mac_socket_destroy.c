
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int * so_peerlabel; int * so_label; } ;


 int mac_socket_label_free (int *) ;
 int mac_socketpeer_label_free (int *) ;

void
mac_socket_destroy(struct socket *so)
{

 if (so->so_label != ((void*)0)) {
  mac_socket_label_free(so->so_label);
  so->so_label = ((void*)0);
  mac_socketpeer_label_free(so->so_peerlabel);
  so->so_peerlabel = ((void*)0);
 }
}
