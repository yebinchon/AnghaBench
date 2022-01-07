
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct semid_kernel {int label; } ;


 int MAC_POLICY_PERFORM_NOSLEEP (int ,int ) ;
 int sysvsem_cleanup ;

void
mac_sysvsem_cleanup(struct semid_kernel *semakptr)
{

 MAC_POLICY_PERFORM_NOSLEEP(sysvsem_cleanup, semakptr->label);
}
