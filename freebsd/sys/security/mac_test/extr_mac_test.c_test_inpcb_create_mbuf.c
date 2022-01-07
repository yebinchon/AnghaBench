
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct label {int dummy; } ;
struct inpcb {int dummy; } ;


 int COUNTER_INC (int ) ;
 int LABEL_CHECK (struct label*,int ) ;
 int MAGIC_INPCB ;
 int MAGIC_MBUF ;
 int inpcb_create_mbuf ;

__attribute__((used)) static void
test_inpcb_create_mbuf(struct inpcb *inp, struct label *inplabel,
    struct mbuf *m, struct label *mlabel)
{

 LABEL_CHECK(inplabel, MAGIC_INPCB);
 LABEL_CHECK(mlabel, MAGIC_MBUF);
 COUNTER_INC(inpcb_create_mbuf);
}
