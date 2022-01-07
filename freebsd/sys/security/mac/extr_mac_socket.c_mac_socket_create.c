
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct socket {int so_label; } ;


 int MAC_POLICY_PERFORM_NOSLEEP (int ,struct ucred*,struct socket*,int ) ;
 int socket_create ;

void
mac_socket_create(struct ucred *cred, struct socket *so)
{

 MAC_POLICY_PERFORM_NOSLEEP(socket_create, cred, so, so->so_label);
}
