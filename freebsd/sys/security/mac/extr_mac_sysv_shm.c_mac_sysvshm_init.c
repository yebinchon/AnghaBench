
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shmid_kernel {int * label; } ;


 int MPC_OBJECT_SYSVSHM ;
 int mac_labeled ;
 int * mac_sysv_shm_label_alloc () ;

void
mac_sysvshm_init(struct shmid_kernel *shmsegptr)
{

 if (mac_labeled & MPC_OBJECT_SYSVSHM)
  shmsegptr->label = mac_sysv_shm_label_alloc();
 else
  shmsegptr->label = ((void*)0);
}
