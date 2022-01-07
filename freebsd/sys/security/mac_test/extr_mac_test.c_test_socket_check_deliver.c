
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct mbuf {int dummy; } ;
struct label {int dummy; } ;


 int COUNTER_INC (int ) ;
 int LABEL_CHECK (struct label*,int ) ;
 int MAGIC_MBUF ;
 int MAGIC_SOCKET ;
 int SOCK_LOCK (struct socket*) ;
 int SOCK_UNLOCK (struct socket*) ;
 int socket_check_deliver ;

__attribute__((used)) static int
test_socket_check_deliver(struct socket *so, struct label *solabel,
    struct mbuf *m, struct label *mlabel)
{

 SOCK_LOCK(so);
 LABEL_CHECK(solabel, MAGIC_SOCKET);
 SOCK_UNLOCK(so);
 LABEL_CHECK(mlabel, MAGIC_MBUF);
 COUNTER_INC(socket_check_deliver);

 return (0);
}
