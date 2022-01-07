
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct semid_kernel {int label; } ;


 int MAC_POLICY_CHECK_NOSLEEP (int ,struct ucred*,struct semid_kernel*,int ) ;
 int sysvsem_check_semget ;

int
mac_sysvsem_check_semget(struct ucred *cred, struct semid_kernel *semakptr)
{
 int error;

 MAC_POLICY_CHECK_NOSLEEP(sysvsem_check_semget, cred, semakptr,
     semakptr->label);

 return (error);
}
