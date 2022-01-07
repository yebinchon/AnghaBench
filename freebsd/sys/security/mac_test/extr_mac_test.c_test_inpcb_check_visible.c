
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {struct label* cr_label; } ;
struct label {int dummy; } ;
struct inpcb {int dummy; } ;


 int COUNTER_INC (int ) ;
 int LABEL_CHECK (struct label*,int ) ;
 int MAGIC_CRED ;
 int MAGIC_INPCB ;
 int inpcb_check_visible ;

__attribute__((used)) static int
test_inpcb_check_visible(struct ucred *cred, struct inpcb *inp,
    struct label *inplabel)
{

 LABEL_CHECK(cred->cr_label, MAGIC_CRED);
 LABEL_CHECK(inplabel, MAGIC_INPCB);
 COUNTER_INC(inpcb_check_visible);

 return (0);
}
