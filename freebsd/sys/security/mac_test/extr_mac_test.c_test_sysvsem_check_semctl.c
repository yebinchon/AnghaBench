
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {struct label* cr_label; } ;
struct semid_kernel {int dummy; } ;
struct label {int dummy; } ;


 int COUNTER_INC (int ) ;
 int LABEL_CHECK (struct label*,int ) ;
 int MAGIC_CRED ;
 int MAGIC_SYSV_SEM ;
 int sysvsem_check_semctl ;

__attribute__((used)) static int
test_sysvsem_check_semctl(struct ucred *cred,
    struct semid_kernel *semakptr, struct label *semaklabel, int cmd)
{

 LABEL_CHECK(cred->cr_label, MAGIC_CRED);
 LABEL_CHECK(semaklabel, MAGIC_SYSV_SEM);
 COUNTER_INC(sysvsem_check_semctl);

   return (0);
}
