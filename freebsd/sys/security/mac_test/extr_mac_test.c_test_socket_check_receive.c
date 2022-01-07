
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {struct label* cr_label; } ;
struct socket {int dummy; } ;
struct label {int dummy; } ;


 int COUNTER_INC (int ) ;
 int LABEL_CHECK (struct label*,int ) ;
 int MAGIC_CRED ;
 int MAGIC_SOCKET ;
 int SOCK_LOCK (struct socket*) ;
 int SOCK_UNLOCK (struct socket*) ;
 int socket_check_receive ;

__attribute__((used)) static int
test_socket_check_receive(struct ucred *cred, struct socket *so,
    struct label *solabel)
{

 LABEL_CHECK(cred->cr_label, MAGIC_CRED);
 SOCK_LOCK(so);
 LABEL_CHECK(solabel, MAGIC_SOCKET);
 SOCK_UNLOCK(so);
 COUNTER_INC(socket_check_receive);

 return (0);
}
