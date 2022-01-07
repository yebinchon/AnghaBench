
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct socket {int so_label; } ;


 int MAC_CHECK_PROBE2 (int ,int,struct ucred*,struct socket*) ;
 int MAC_POLICY_CHECK_NOSLEEP (int ,struct ucred*,struct socket*,int ) ;
 int socket_check_send ;

int
mac_socket_check_send(struct ucred *cred, struct socket *so)
{
 int error;

 MAC_POLICY_CHECK_NOSLEEP(socket_check_send, cred, so, so->so_label);
 MAC_CHECK_PROBE2(socket_check_send, error, cred, so);

 return (error);
}
