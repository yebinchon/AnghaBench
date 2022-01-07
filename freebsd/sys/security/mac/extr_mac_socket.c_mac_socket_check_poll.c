
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct socket {int so_label; } ;


 int MAC_CHECK_PROBE2 (int ,int,struct ucred*,struct socket*) ;
 int MAC_POLICY_CHECK_NOSLEEP (int ,struct ucred*,struct socket*,int ) ;
 int socket_check_poll ;

int
mac_socket_check_poll(struct ucred *cred, struct socket *so)
{
 int error;

 MAC_POLICY_CHECK_NOSLEEP(socket_check_poll, cred, so, so->so_label);
 MAC_CHECK_PROBE2(socket_check_poll, error, cred, so);

 return (error);
}
