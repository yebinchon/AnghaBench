
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct shmfd {int shm_mode; int shm_gid; int shm_uid; } ;
struct file {struct shmfd* f_data; } ;
typedef int mode_t ;


 int ACCESSPERMS ;
 int VADMIN ;
 int VREG ;
 int mac_posixshm_check_setmode (struct ucred*,struct shmfd*,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int shm_timestamp_lock ;
 int vaccess (int ,int,int ,int ,int ,struct ucred*,int *) ;

__attribute__((used)) static int
shm_chmod(struct file *fp, mode_t mode, struct ucred *active_cred,
    struct thread *td)
{
 struct shmfd *shmfd;
 int error;

 error = 0;
 shmfd = fp->f_data;
 mtx_lock(&shm_timestamp_lock);
 error = vaccess(VREG, shmfd->shm_mode, shmfd->shm_uid,
     shmfd->shm_gid, VADMIN, active_cred, ((void*)0));
 if (error != 0)
  goto out;
 shmfd->shm_mode = mode & ACCESSPERMS;
out:
 mtx_unlock(&shm_timestamp_lock);
 return (error);
}
