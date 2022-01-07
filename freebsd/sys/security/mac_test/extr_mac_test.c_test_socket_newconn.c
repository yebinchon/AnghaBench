
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct label {int dummy; } ;


 int COUNTER_INC (int ) ;
 int LABEL_CHECK (struct label*,int ) ;
 int MAGIC_SOCKET ;
 int SOCK_LOCK (struct socket*) ;
 int SOCK_UNLOCK (struct socket*) ;
 int socket_newconn ;

__attribute__((used)) static void
test_socket_newconn(struct socket *oldso, struct label *oldsolabel,
    struct socket *newso, struct label *newsolabel)
{

 SOCK_LOCK(oldso);
 LABEL_CHECK(oldsolabel, MAGIC_SOCKET);
 SOCK_UNLOCK(oldso);
 SOCK_LOCK(newso);
 LABEL_CHECK(newsolabel, MAGIC_SOCKET);
 SOCK_UNLOCK(newso);
 COUNTER_INC(socket_newconn);
}
