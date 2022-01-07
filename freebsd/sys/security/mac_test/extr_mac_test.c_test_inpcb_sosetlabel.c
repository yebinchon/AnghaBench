
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct label {int dummy; } ;
struct inpcb {int dummy; } ;


 int COUNTER_INC (int ) ;
 int LABEL_CHECK (struct label*,int ) ;
 int MAGIC_INPCB ;
 int MAGIC_SOCKET ;
 int SOCK_LOCK_ASSERT (struct socket*) ;
 int inpcb_sosetlabel ;

__attribute__((used)) static void
test_inpcb_sosetlabel(struct socket *so, struct label *solabel,
    struct inpcb *inp, struct label *inplabel)
{

 SOCK_LOCK_ASSERT(so);

 LABEL_CHECK(solabel, MAGIC_SOCKET);
 LABEL_CHECK(inplabel, MAGIC_INPCB);
 COUNTER_INC(inpcb_sosetlabel);
}
