
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_size_t ;
typedef int vm_prot_t ;
typedef scalar_t__ vm_ooffset_t ;
typedef int vm_offset_t ;
typedef int vm_map_t ;
struct thread {int td_ucred; } ;
struct shmfd {int shm_seals; int shm_mtx; int shm_rl; int shm_object; int shm_atime; } ;
struct file {int f_flag; struct shmfd* f_data; } ;


 int EACCES ;
 int EINVAL ;
 int EPERM ;
 int FREAD ;
 int FWRITE ;
 int F_SEAL_WRITE ;
 int MAP_SHARED ;
 scalar_t__ OFF_MAX ;
 int VM_PROT_EXECUTE ;
 int VM_PROT_NONE ;
 int VM_PROT_READ ;
 int VM_PROT_WRITE ;
 int mac_posixshm_check_mmap (int ,struct shmfd*,int,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 void* rangelock_rlock (int *,int ,scalar_t__,int *) ;
 int rangelock_unlock (int *,void*,int *) ;
 int shm_timestamp_lock ;
 int vfs_timestamp (int *) ;
 int vm_mmap_object (int ,int *,scalar_t__,int,int,int,int ,scalar_t__,int,struct thread*) ;
 int vm_object_deallocate (int ) ;
 int vm_object_reference (int ) ;
 int vm_pager_release_writecount (int ,int ,scalar_t__) ;
 int vm_pager_update_writecount (int ,int ,scalar_t__) ;

int
shm_mmap(struct file *fp, vm_map_t map, vm_offset_t *addr, vm_size_t objsize,
    vm_prot_t prot, vm_prot_t cap_maxprot, int flags,
    vm_ooffset_t foff, struct thread *td)
{
 struct shmfd *shmfd;
 vm_prot_t maxprot;
 int error;
 bool writecnt;
 void *rl_cookie;

 shmfd = fp->f_data;
 maxprot = VM_PROT_NONE;

 rl_cookie = rangelock_rlock(&shmfd->shm_rl, 0, objsize,
     &shmfd->shm_mtx);

 if ((fp->f_flag & FREAD) != 0)
  maxprot |= VM_PROT_EXECUTE | VM_PROT_READ;
 if ((fp->f_flag & FWRITE) != 0)
  maxprot |= VM_PROT_WRITE;

 writecnt = (flags & MAP_SHARED) != 0 && (prot & VM_PROT_WRITE) != 0;

 if (writecnt && (shmfd->shm_seals & F_SEAL_WRITE) != 0) {
  error = EPERM;
  goto out;
 }


 if (writecnt && (maxprot & VM_PROT_WRITE) == 0) {
  error = EACCES;
  goto out;
 }
 maxprot &= cap_maxprot;


 if (

     objsize > OFF_MAX ||

     foff < 0 || foff > OFF_MAX - objsize) {
  error = EINVAL;
  goto out;
 }







 mtx_lock(&shm_timestamp_lock);
 vfs_timestamp(&shmfd->shm_atime);
 mtx_unlock(&shm_timestamp_lock);
 vm_object_reference(shmfd->shm_object);

 if (writecnt)
  vm_pager_update_writecount(shmfd->shm_object, 0, objsize);
 error = vm_mmap_object(map, addr, objsize, prot, maxprot, flags,
     shmfd->shm_object, foff, writecnt, td);
 if (error != 0) {
  if (writecnt)
   vm_pager_release_writecount(shmfd->shm_object, 0,
       objsize);
  vm_object_deallocate(shmfd->shm_object);
 }
out:
 rangelock_unlock(&shmfd->shm_rl, rl_cookie, &shmfd->shm_mtx);
 return (error);
}
