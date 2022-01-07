
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int cr_label; } ;


 int COUNTER_INC (int ) ;
 int LABEL_CHECK (int ,int ) ;
 int MAGIC_CRED ;
 int cred_check_visible ;

__attribute__((used)) static int
test_cred_check_visible(struct ucred *u1, struct ucred *u2)
{

 LABEL_CHECK(u1->cr_label, MAGIC_CRED);
 LABEL_CHECK(u2->cr_label, MAGIC_CRED);
 COUNTER_INC(cred_check_visible);

 return (0);
}
