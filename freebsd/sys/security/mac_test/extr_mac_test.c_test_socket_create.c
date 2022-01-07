
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
 int socket_create ;

__attribute__((used)) static void
test_socket_create(struct ucred *cred, struct socket *so,
    struct label *solabel)
{

 LABEL_CHECK(cred->cr_label, MAGIC_CRED);
 LABEL_CHECK(solabel, MAGIC_SOCKET);
 COUNTER_INC(socket_create);
}
