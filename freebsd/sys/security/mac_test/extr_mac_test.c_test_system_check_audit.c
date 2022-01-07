
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int cr_label; } ;


 int COUNTER_INC (int ) ;
 int LABEL_CHECK (int ,int ) ;
 int MAGIC_CRED ;
 int system_check_audit ;

__attribute__((used)) static int
test_system_check_audit(struct ucred *cred, void *record, int length)
{

 LABEL_CHECK(cred->cr_label, MAGIC_CRED);
 COUNTER_INC(system_check_audit);

 return (0);
}
