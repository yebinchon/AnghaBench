
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct socket {int so_label; } ;
struct sockaddr {int dummy; } ;


 int MAC_CHECK_PROBE3 (int ,int,struct ucred*,struct socket*,struct sockaddr*) ;
 int MAC_POLICY_CHECK_NOSLEEP (int ,struct ucred*,struct socket*,int ,struct sockaddr*) ;
 int socket_check_connect ;

int
mac_socket_check_connect(struct ucred *cred, struct socket *so,
    struct sockaddr *sa)
{
 int error;

 MAC_POLICY_CHECK_NOSLEEP(socket_check_connect, cred, so,
     so->so_label, sa);
 MAC_CHECK_PROBE3(socket_check_connect, error, cred, so, sa);

 return (error);
}
