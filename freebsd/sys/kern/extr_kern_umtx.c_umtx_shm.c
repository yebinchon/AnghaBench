
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct umtx_shm_reg {int ushm_obj; } ;
struct umtx_key {int shared; } ;
struct thread {int* td_retval; int td_ucred; } ;
struct file {int dummy; } ;


 int DTYPE_SHM ;
 int EINVAL ;
 int ESRCH ;
 int FFLAGS (int ) ;
 int KASSERT (int,char*) ;
 int O_CLOEXEC ;
 int O_RDWR ;
 int PROCESS_SHARE ;
 int TYPE_SHM ;
 int UMTX_SHM_ALIVE ;
 int UMTX_SHM_CREAT ;
 int UMTX_SHM_DESTROY ;
 int UMTX_SHM_LOOKUP ;
 int __bitcount (int) ;
 int falloc_caps (struct thread*,struct file**,int*,int ,int *) ;
 int fdrop (struct file*,struct thread*) ;
 int finit (struct file*,int ,int ,int ,int *) ;
 int mac_posixshm_check_open (int ,int ,int ) ;
 int shm_access (int ,int ,int ) ;
 int shm_hold (int ) ;
 int shm_ops ;
 int umtx_key_get (void*,int ,int ,struct umtx_key*) ;
 int umtx_key_release (struct umtx_key*) ;
 int umtx_shm_alive (struct thread*,void*) ;
 int umtx_shm_create_reg (struct thread*,struct umtx_key*,struct umtx_shm_reg**) ;
 struct umtx_shm_reg* umtx_shm_find_reg (struct umtx_key*) ;
 int umtx_shm_unref_reg (struct umtx_shm_reg*,int) ;

__attribute__((used)) static int
umtx_shm(struct thread *td, void *addr, u_int flags)
{
 struct umtx_key key;
 struct umtx_shm_reg *reg;
 struct file *fp;
 int error, fd;

 if (__bitcount(flags & (UMTX_SHM_CREAT | UMTX_SHM_LOOKUP |
     UMTX_SHM_DESTROY| UMTX_SHM_ALIVE)) != 1)
  return (EINVAL);
 if ((flags & UMTX_SHM_ALIVE) != 0)
  return (umtx_shm_alive(td, addr));
 error = umtx_key_get(addr, TYPE_SHM, PROCESS_SHARE, &key);
 if (error != 0)
  return (error);
 KASSERT(key.shared == 1, ("non-shared key"));
 if ((flags & UMTX_SHM_CREAT) != 0) {
  error = umtx_shm_create_reg(td, &key, &reg);
 } else {
  reg = umtx_shm_find_reg(&key);
  if (reg == ((void*)0))
   error = ESRCH;
 }
 umtx_key_release(&key);
 if (error != 0)
  return (error);
 KASSERT(reg != ((void*)0), ("no reg"));
 if ((flags & UMTX_SHM_DESTROY) != 0) {
  umtx_shm_unref_reg(reg, 1);
 } else {
   error = falloc_caps(td, &fp, &fd, O_CLOEXEC, ((void*)0));
  if (error == 0) {
   shm_hold(reg->ushm_obj);
   finit(fp, FFLAGS(O_RDWR), DTYPE_SHM, reg->ushm_obj,
       &shm_ops);
   td->td_retval[0] = fd;
   fdrop(fp, td);
  }
 }
 umtx_shm_unref_reg(reg, 0);
 return (error);
}
