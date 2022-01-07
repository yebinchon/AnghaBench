
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int cr_label; } ;


 int COUNTER_INC (int ) ;
 int LABEL_CHECK (int ,int ) ;
 int MAGIC_CRED ;
 int kenv_check_set ;

__attribute__((used)) static int
test_kenv_check_set(struct ucred *cred, char *name, char *value)
{

 LABEL_CHECK(cred->cr_label, MAGIC_CRED);
 COUNTER_INC(kenv_check_set);

 return (0);
}
