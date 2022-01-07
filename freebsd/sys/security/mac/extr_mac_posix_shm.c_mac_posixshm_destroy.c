
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shmfd {int * shm_label; } ;


 int mac_posixshm_label_free (int *) ;

void
mac_posixshm_destroy(struct shmfd *shmfd)
{

 if (shmfd->shm_label != ((void*)0)) {
  mac_posixshm_label_free(shmfd->shm_label);
  shmfd->shm_label = ((void*)0);
 }
}
