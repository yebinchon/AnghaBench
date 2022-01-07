
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shmfd {int * shm_label; } ;


 int MPC_OBJECT_POSIXSHM ;
 int mac_labeled ;
 int * mac_posixshm_label_alloc () ;

void
mac_posixshm_init(struct shmfd *shmfd)
{

 if (mac_labeled & MPC_OBJECT_POSIXSHM)
  shmfd->shm_label = mac_posixshm_label_alloc();
 else
  shmfd->shm_label = ((void*)0);
}
