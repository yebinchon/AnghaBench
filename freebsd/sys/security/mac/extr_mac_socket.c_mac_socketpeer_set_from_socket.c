
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int so_peerlabel; int so_label; } ;


 int MAC_POLICY_PERFORM_NOSLEEP (int ,struct socket*,int ,struct socket*,int ) ;
 scalar_t__ mac_policy_count ;
 int socketpeer_set_from_socket ;

void
mac_socketpeer_set_from_socket(struct socket *oldso, struct socket *newso)
{

 if (mac_policy_count == 0)
  return;

 MAC_POLICY_PERFORM_NOSLEEP(socketpeer_set_from_socket, oldso,
     oldso->so_label, newso, newso->so_peerlabel);
}
