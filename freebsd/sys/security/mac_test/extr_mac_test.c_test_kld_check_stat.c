
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int cr_label; } ;


 int COUNTER_INC (int ) ;
 int LABEL_CHECK (int ,int ) ;
 int MAGIC_CRED ;
 int kld_check_stat ;

__attribute__((used)) static int
test_kld_check_stat(struct ucred *cred)
{

 LABEL_CHECK(cred->cr_label, MAGIC_CRED);
 COUNTER_INC(kld_check_stat);

 return (0);
}
