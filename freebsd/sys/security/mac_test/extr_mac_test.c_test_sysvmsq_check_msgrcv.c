
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {struct label* cr_label; } ;
struct msg {int dummy; } ;
struct label {int dummy; } ;


 int COUNTER_INC (int ) ;
 int LABEL_CHECK (struct label*,int ) ;
 int MAGIC_CRED ;
 int MAGIC_SYSV_MSG ;
 int sysvmsq_check_msgrcv ;

__attribute__((used)) static int
test_sysvmsq_check_msgrcv(struct ucred *cred, struct msg *msgptr,
    struct label *msglabel)
{

 LABEL_CHECK(msglabel, MAGIC_SYSV_MSG);
 LABEL_CHECK(cred->cr_label, MAGIC_CRED);
 COUNTER_INC(sysvmsq_check_msgrcv);

 return (0);
}
