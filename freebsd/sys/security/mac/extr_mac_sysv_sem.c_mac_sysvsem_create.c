
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct semid_kernel {int label; } ;


 int MAC_POLICY_PERFORM_NOSLEEP (int ,struct ucred*,struct semid_kernel*,int ) ;
 int sysvsem_create ;

void
mac_sysvsem_create(struct ucred *cred, struct semid_kernel *semakptr)
{

 MAC_POLICY_PERFORM_NOSLEEP(sysvsem_create, cred, semakptr,
     semakptr->label);
}
