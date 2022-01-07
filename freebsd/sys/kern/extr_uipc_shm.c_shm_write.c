
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio {scalar_t__ uio_resid; scalar_t__ uio_offset; } ;
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct shmfd {int shm_seals; int shm_mtx; int shm_rl; int shm_size; int shm_object; } ;
struct file {int f_cred; struct shmfd* f_data; } ;


 int EPERM ;
 int FOF_OFFSET ;
 int F_SEAL_WRITE ;
 scalar_t__ OFF_MAX ;
 int foffset_lock_uio (struct file*,struct uio*,int) ;
 int foffset_unlock_uio (struct file*,struct uio*,int) ;
 int mac_posixshm_check_write (struct ucred*,int ,struct shmfd*) ;
 int rangelock_unlock (int *,void*,int *) ;
 void* rangelock_wlock (int *,scalar_t__,scalar_t__,int *) ;
 int uiomove_object (int ,int ,struct uio*) ;

__attribute__((used)) static int
shm_write(struct file *fp, struct uio *uio, struct ucred *active_cred,
    int flags, struct thread *td)
{
 struct shmfd *shmfd;
 void *rl_cookie;
 int error;

 shmfd = fp->f_data;





 foffset_lock_uio(fp, uio, flags);
 if ((flags & FOF_OFFSET) == 0) {
  rl_cookie = rangelock_wlock(&shmfd->shm_rl, 0, OFF_MAX,
      &shmfd->shm_mtx);
 } else {
  rl_cookie = rangelock_wlock(&shmfd->shm_rl, uio->uio_offset,
      uio->uio_offset + uio->uio_resid, &shmfd->shm_mtx);
 }
 if ((shmfd->shm_seals & F_SEAL_WRITE) != 0)
  error = EPERM;
 else
  error = uiomove_object(shmfd->shm_object, shmfd->shm_size, uio);
 rangelock_unlock(&shmfd->shm_rl, rl_cookie, &shmfd->shm_mtx);
 foffset_unlock_uio(fp, uio, flags);
 return (error);
}
