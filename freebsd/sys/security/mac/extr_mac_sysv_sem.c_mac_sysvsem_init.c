
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct semid_kernel {int * label; } ;


 int MPC_OBJECT_SYSVSEM ;
 int mac_labeled ;
 int * mac_sysv_sem_label_alloc () ;

void
mac_sysvsem_init(struct semid_kernel *semakptr)
{

 if (mac_labeled & MPC_OBJECT_SYSVSEM)
  semakptr->label = mac_sysv_sem_label_alloc();
 else
  semakptr->label = ((void*)0);
}
