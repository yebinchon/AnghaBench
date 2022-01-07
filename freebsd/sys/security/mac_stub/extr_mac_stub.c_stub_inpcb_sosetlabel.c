
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct label {int dummy; } ;
struct inpcb {int dummy; } ;


 int SOCK_LOCK_ASSERT (struct socket*) ;

__attribute__((used)) static void
stub_inpcb_sosetlabel(struct socket *so, struct label *solabel,
    struct inpcb *inp, struct label *inplabel)
{

 SOCK_LOCK_ASSERT(so);

}
