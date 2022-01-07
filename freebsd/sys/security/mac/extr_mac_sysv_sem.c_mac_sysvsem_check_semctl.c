
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct semid_kernel {int label; } ;


 int MAC_CHECK_PROBE3 (int ,int,struct ucred*,struct semid_kernel*,int) ;
 int MAC_POLICY_CHECK_NOSLEEP (int ,struct ucred*,struct semid_kernel*,int ,int) ;
 int sysvsem_check_semctl ;

int
mac_sysvsem_check_semctl(struct ucred *cred, struct semid_kernel *semakptr,
    int cmd)
{
 int error;

 MAC_POLICY_CHECK_NOSLEEP(sysvsem_check_semctl, cred, semakptr,
     semakptr->label, cmd);
 MAC_CHECK_PROBE3(sysvsem_check_semctl, error, cred, semakptr, cmd);

 return (error);
}
