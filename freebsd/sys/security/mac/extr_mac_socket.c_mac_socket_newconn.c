
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int so_label; } ;


 int MAC_POLICY_PERFORM_NOSLEEP (int ,struct socket*,int ,struct socket*,int ) ;
 int socket_newconn ;

void
mac_socket_newconn(struct socket *oldso, struct socket *newso)
{

 MAC_POLICY_PERFORM_NOSLEEP(socket_newconn, oldso, oldso->so_label,
     newso, newso->so_label);
}
