
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct shmfd {int shm_gid; int shm_uid; int shm_mode; } ;
typedef int accmode_t ;


 int FREAD ;
 int FWRITE ;
 int VREAD ;
 int VREG ;
 int VWRITE ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int shm_timestamp_lock ;
 int vaccess (int ,int ,int ,int ,int ,struct ucred*,int *) ;

int
shm_access(struct shmfd *shmfd, struct ucred *ucred, int flags)
{
 accmode_t accmode;
 int error;

 accmode = 0;
 if (flags & FREAD)
  accmode |= VREAD;
 if (flags & FWRITE)
  accmode |= VWRITE;
 mtx_lock(&shm_timestamp_lock);
 error = vaccess(VREG, shmfd->shm_mode, shmfd->shm_uid, shmfd->shm_gid,
     accmode, ucred, ((void*)0));
 mtx_unlock(&shm_timestamp_lock);
 return (error);
}
