
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shmfd {int shm_object; int shm_mtx; int shm_rl; int shm_refs; } ;


 int M_SHMFD ;
 int free (struct shmfd*,int ) ;
 int mac_posixshm_destroy (struct shmfd*) ;
 int mtx_destroy (int *) ;
 int rangelock_destroy (int *) ;
 scalar_t__ refcount_release (int *) ;
 int vm_object_deallocate (int ) ;

void
shm_drop(struct shmfd *shmfd)
{

 if (refcount_release(&shmfd->shm_refs)) {



  rangelock_destroy(&shmfd->shm_rl);
  mtx_destroy(&shmfd->shm_mtx);
  vm_object_deallocate(shmfd->shm_object);
  free(shmfd, M_SHMFD);
 }
}
