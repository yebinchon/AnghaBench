
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {struct label* cr_label; } ;
struct shmid_kernel {int dummy; } ;
struct label {int dummy; } ;


 int COUNTER_INC (int ) ;
 int LABEL_CHECK (struct label*,int ) ;
 int MAGIC_CRED ;
 int MAGIC_SYSV_SHM ;
 int sysvshm_check_shmget ;

__attribute__((used)) static int
test_sysvshm_check_shmget(struct ucred *cred,
    struct shmid_kernel *shmsegptr, struct label *shmseglabel, int shmflg)
{

 LABEL_CHECK(cred->cr_label, MAGIC_CRED);
 LABEL_CHECK(shmseglabel, MAGIC_SYSV_SHM);
 COUNTER_INC(sysvshm_check_shmget);

 return (0);
}
