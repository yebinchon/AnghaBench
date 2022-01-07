
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int cr_label; } ;


 int COUNTER_INC (int ) ;
 int LABEL_CHECK (int ,int ) ;
 int MAGIC_CRED ;
 int cred_create_swapper ;

__attribute__((used)) static void
test_cred_create_swapper(struct ucred *cred)
{

 LABEL_CHECK(cred->cr_label, MAGIC_CRED);
 COUNTER_INC(cred_create_swapper);
}
