
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct socket {int dummy; } ;
struct sockaddr {int dummy; } ;
struct label {int dummy; } ;


 int SOCK_LOCK (struct socket*) ;
 int SOCK_UNLOCK (struct socket*) ;

__attribute__((used)) static int
stub_socket_check_connect(struct ucred *cred, struct socket *so,
    struct label *solabel, struct sockaddr *sa)
{






 return (0);
}
