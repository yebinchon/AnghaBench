
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
 int socketpeer_set_from_mbuf ;

__attribute__((used)) static void
test_socketpeer_set_from_mbuf(struct mbuf *m, struct label *mlabel,
    struct socket *so, struct label *sopeerlabel)
{

 LABEL_CHECK(mlabel, MAGIC_MBUF);
 SOCK_LOCK(so);
 LABEL_CHECK(sopeerlabel, MAGIC_SOCKET);
 SOCK_UNLOCK(so);
 COUNTER_INC(socketpeer_set_from_mbuf);
}
