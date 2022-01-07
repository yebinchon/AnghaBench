
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
 int socketpeer_set_from_socket ;

__attribute__((used)) static void
test_socketpeer_set_from_socket(struct socket *oldso,
    struct label *oldsolabel, struct socket *newso,
    struct label *newsopeerlabel)
{

 SOCK_LOCK(oldso);
 LABEL_CHECK(oldsolabel, MAGIC_SOCKET);
 SOCK_UNLOCK(oldso);
 SOCK_LOCK(newso);
 LABEL_CHECK(newsopeerlabel, MAGIC_SOCKET);
 SOCK_UNLOCK(newso);
 COUNTER_INC(socketpeer_set_from_socket);
}
