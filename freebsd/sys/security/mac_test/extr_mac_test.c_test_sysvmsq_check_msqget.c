
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {struct label* cr_label; } ;
struct msqid_kernel {int dummy; } ;
struct label {int dummy; } ;


 int COUNTER_INC (int ) ;
 int LABEL_CHECK (struct label*,int ) ;
 int MAGIC_CRED ;
 int MAGIC_SYSV_MSQ ;
 int sysvmsq_check_msqget ;

__attribute__((used)) static int
test_sysvmsq_check_msqget(struct ucred *cred,
    struct msqid_kernel *msqkptr, struct label *msqklabel)
{

 LABEL_CHECK(msqklabel, MAGIC_SYSV_MSQ);
 LABEL_CHECK(cred->cr_label, MAGIC_CRED);
 COUNTER_INC(sysvmsq_check_msqget);

 return (0);
}
