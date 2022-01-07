
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct semid_kernel {int label; } ;


 int MAC_CHECK_PROBE3 (int ,int,struct ucred*,struct semid_kernel*,size_t) ;
 int MAC_POLICY_CHECK_NOSLEEP (int ,struct ucred*,struct semid_kernel*,int ,size_t) ;
 int sysvsem_check_semop ;

int
mac_sysvsem_check_semop(struct ucred *cred, struct semid_kernel *semakptr,
    size_t accesstype)
{
 int error;

 MAC_POLICY_CHECK_NOSLEEP(sysvsem_check_semop, cred, semakptr,
     semakptr->label, accesstype);
 MAC_CHECK_PROBE3(sysvsem_check_semop, error, cred, semakptr,
     accesstype);

 return (error);
}
