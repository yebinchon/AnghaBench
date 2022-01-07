
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
 int SOCK_LOCK_ASSERT (struct socket*) ;
 int socket_relabel ;

__attribute__((used)) static void
test_socket_relabel(struct ucred *cred, struct socket *so,
    struct label *solabel, struct label *newlabel)
{

 SOCK_LOCK_ASSERT(so);

 LABEL_CHECK(cred->cr_label, MAGIC_CRED);
 LABEL_CHECK(solabel, MAGIC_SOCKET);
 LABEL_CHECK(newlabel, MAGIC_SOCKET);
 COUNTER_INC(socket_relabel);
}
