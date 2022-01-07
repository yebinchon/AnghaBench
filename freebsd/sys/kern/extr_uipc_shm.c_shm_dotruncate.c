
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shmfd {int shm_mtx; int shm_rl; int shm_object; } ;
typedef int off_t ;


 int OFF_MAX ;
 int VM_OBJECT_WLOCK (int ) ;
 int VM_OBJECT_WUNLOCK (int ) ;
 int rangelock_unlock (int *,void*,int *) ;
 void* rangelock_wlock (int *,int ,int ,int *) ;
 int shm_dotruncate_locked (struct shmfd*,int ,void*) ;

int
shm_dotruncate(struct shmfd *shmfd, off_t length)
{
 void *rl_cookie;
 int error;

 rl_cookie = rangelock_wlock(&shmfd->shm_rl, 0, OFF_MAX,
     &shmfd->shm_mtx);
 VM_OBJECT_WLOCK(shmfd->shm_object);
 error = shm_dotruncate_locked(shmfd, length, rl_cookie);
 VM_OBJECT_WUNLOCK(shmfd->shm_object);
 rangelock_unlock(&shmfd->shm_rl, rl_cookie, &shmfd->shm_mtx);
 return (error);
}
