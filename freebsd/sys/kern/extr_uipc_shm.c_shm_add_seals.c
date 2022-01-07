
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ vm_ooffset_t ;
struct shmfd {int shm_seals; int shm_mtx; int shm_rl; TYPE_3__* shm_object; } ;
struct file {struct shmfd* f_data; } ;
struct TYPE_5__ {scalar_t__ writemappings; } ;
struct TYPE_6__ {TYPE_1__ swp; } ;
struct TYPE_7__ {TYPE_2__ un_pager; } ;


 int EBUSY ;
 int EPERM ;
 int F_SEAL_SEAL ;
 int F_SEAL_WRITE ;
 int OFF_MAX ;
 int VM_OBJECT_RLOCK (TYPE_3__*) ;
 int VM_OBJECT_RUNLOCK (TYPE_3__*) ;
 int rangelock_unlock (int *,void*,int *) ;
 void* rangelock_wlock (int *,int ,int ,int *) ;

__attribute__((used)) static int
shm_add_seals(struct file *fp, int seals)
{
 struct shmfd *shmfd;
 void *rl_cookie;
 vm_ooffset_t writemappings;
 int error, nseals;

 error = 0;
 shmfd = fp->f_data;
 rl_cookie = rangelock_wlock(&shmfd->shm_rl, 0, OFF_MAX,
     &shmfd->shm_mtx);


 if ((shmfd->shm_seals & F_SEAL_SEAL) != 0) {
  error = EPERM;
  goto out;
 }
 nseals = seals & ~shmfd->shm_seals;
 if ((nseals & F_SEAL_WRITE) != 0) {






  VM_OBJECT_RLOCK(shmfd->shm_object);
  writemappings = shmfd->shm_object->un_pager.swp.writemappings;
  VM_OBJECT_RUNLOCK(shmfd->shm_object);

  if (writemappings > 0) {
   error = EBUSY;
   goto out;
  }
 }
 shmfd->shm_seals |= nseals;
out:
 rangelock_unlock(&shmfd->shm_rl, rl_cookie, &shmfd->shm_mtx);
 return (error);
}
