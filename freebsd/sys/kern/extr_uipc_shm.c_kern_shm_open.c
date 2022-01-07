
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct thread {int* td_retval; TYPE_3__* td_ucred; TYPE_1__* td_proc; } ;
struct shmfd {int shm_seals; int shm_mtx; int shm_rl; int shm_object; } ;
struct filedesc {int fd_cmask; } ;
struct filecaps {int dummy; } ;
struct file {int f_cred; } ;
typedef int mode_t ;
struct TYPE_10__ {TYPE_2__* cr_prison; } ;
struct TYPE_9__ {char* pr_path; } ;
struct TYPE_8__ {struct filedesc* p_fd; } ;
typedef int Fnv32_t ;


 int ACCESSPERMS ;
 int AUDIT_ARG_FFLAGS (int) ;
 int AUDIT_ARG_MODE (int) ;
 int AUDIT_ARG_UPATH1_CANON (char*) ;
 int DTYPE_SHM ;
 int ECAPMODE ;
 int EEXIST ;
 int EINVAL ;
 int ENOENT ;
 int EPERM ;
 int FFLAGS (int) ;
 int FNV1_32_INIT ;
 int F_SEAL_SEAL ;
 scalar_t__ IN_CAPABILITY_MODE (struct thread*) ;
 scalar_t__ KTRPOINT (int ,int ) ;
 int KTR_NAMEI ;
 scalar_t__ MAXPATHLEN ;
 int M_SHMFD ;
 int M_WAITOK ;
 int OFF_MAX ;
 int O_ACCMODE ;
 int O_CLOEXEC ;
 int O_CREAT ;
 int O_EXCL ;
 int O_RDONLY ;
 int O_RDWR ;
 int O_TRUNC ;
 char const* SHM_ANON ;
 int VM_OBJECT_WLOCK (int ) ;
 int VM_OBJECT_WUNLOCK (int ) ;
 int copyinstr (char const*,char*,scalar_t__,int *) ;
 int curthread ;
 int falloc_caps (struct thread*,struct file**,int*,int,struct filecaps*) ;
 int fdclose (struct thread*,struct file*,int) ;
 int fdrop (struct file*,struct thread*) ;
 int finit (struct file*,int ,int ,struct shmfd*,int *) ;
 int fnv_32_str (char*,int ) ;
 int free (char*,int ) ;
 int ktrnamei (char*) ;
 int mac_posixshm_check_create (TYPE_3__*,char*) ;
 int mac_posixshm_check_open (TYPE_3__*,struct shmfd*,int ) ;
 int mac_posixshm_check_truncate (TYPE_3__*,int ,struct shmfd*) ;
 char* malloc (scalar_t__,int ,int ) ;
 int rangelock_unlock (int *,void*,int *) ;
 void* rangelock_wlock (int *,int ,int ,int *) ;
 int shm_access (struct shmfd*,TYPE_3__*,int ) ;
 struct shmfd* shm_alloc (TYPE_3__*,int) ;
 int shm_dict_lock ;
 int shm_dotruncate_locked (struct shmfd*,int ,void*) ;
 int shm_hold (struct shmfd*) ;
 int shm_insert (char*,int ,struct shmfd*) ;
 struct shmfd* shm_lookup (char*,int ) ;
 int shm_ops ;
 scalar_t__ strcmp (char const*,char*) ;
 size_t strlcpy (char*,char const*,scalar_t__) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;

int
kern_shm_open(struct thread *td, const char *userpath, int flags, mode_t mode,
    struct filecaps *fcaps, int initial_seals)
{
 struct filedesc *fdp;
 struct shmfd *shmfd;
 struct file *fp;
 char *path;
 const char *pr_path;
 void *rl_cookie;
 size_t pr_pathlen;
 Fnv32_t fnv;
 mode_t cmode;
 int fd, error;
 AUDIT_ARG_FFLAGS(flags);
 AUDIT_ARG_MODE(mode);

 if ((flags & O_ACCMODE) != O_RDONLY && (flags & O_ACCMODE) != O_RDWR)
  return (EINVAL);

 if ((flags & ~(O_ACCMODE | O_CREAT | O_EXCL | O_TRUNC | O_CLOEXEC)) != 0)
  return (EINVAL);
 if ((initial_seals & ~F_SEAL_SEAL) != 0)
  return (EINVAL);

 fdp = td->td_proc->p_fd;
 cmode = (mode & ~fdp->fd_cmask) & ACCESSPERMS;
 error = falloc_caps(td, &fp, &fd, flags & O_CLOEXEC, fcaps);
 if (error)
  return (error);


 if (userpath == SHM_ANON) {

  if ((flags & O_ACCMODE) == O_RDONLY) {
   fdclose(td, fp, fd);
   fdrop(fp, td);
   return (EINVAL);
  }
  shmfd = shm_alloc(td->td_ucred, cmode);
  shmfd->shm_seals = initial_seals;
 } else {
  path = malloc(MAXPATHLEN, M_SHMFD, M_WAITOK);
  pr_path = td->td_ucred->cr_prison->pr_path;


  pr_pathlen = strcmp(pr_path, "/") == 0 ? 0
      : strlcpy(path, pr_path, MAXPATHLEN);
  error = copyinstr(userpath, path + pr_pathlen,
      MAXPATHLEN - pr_pathlen, ((void*)0));





  if (error == 0 && path[pr_pathlen] != '/')
   error = EINVAL;
  if (error) {
   fdclose(td, fp, fd);
   fdrop(fp, td);
   free(path, M_SHMFD);
   return (error);
  }

  AUDIT_ARG_UPATH1_CANON(path);
  fnv = fnv_32_str(path, FNV1_32_INIT);
  sx_xlock(&shm_dict_lock);
  shmfd = shm_lookup(path, fnv);
  if (shmfd == ((void*)0)) {

   if (flags & O_CREAT) {





     shmfd = shm_alloc(td->td_ucred, cmode);
     shmfd->shm_seals = initial_seals;
     shm_insert(path, fnv, shmfd);



   } else {
    free(path, M_SHMFD);
    error = ENOENT;
   }
  } else {
   rl_cookie = rangelock_wlock(&shmfd->shm_rl, 0, OFF_MAX,
       &shmfd->shm_mtx);
   initial_seals &= ~shmfd->shm_seals;





   free(path, M_SHMFD);
   if ((shmfd->shm_seals & F_SEAL_SEAL) != 0 &&
       initial_seals != 0)
    error = EPERM;
   else if ((flags & (O_CREAT | O_EXCL)) ==
       (O_CREAT | O_EXCL))
    error = EEXIST;
   else {





    error = shm_access(shmfd, td->td_ucred,
        FFLAGS(flags & O_ACCMODE));
   }






   if (error == 0 &&
       (flags & (O_ACCMODE | O_TRUNC)) ==
       (O_RDWR | O_TRUNC)) {
    VM_OBJECT_WLOCK(shmfd->shm_object);





     error = shm_dotruncate_locked(shmfd, 0,
         rl_cookie);
    VM_OBJECT_WUNLOCK(shmfd->shm_object);
   }
   if (error == 0) {





    shmfd->shm_seals |= initial_seals;
    shm_hold(shmfd);
   }
   rangelock_unlock(&shmfd->shm_rl, rl_cookie,
       &shmfd->shm_mtx);
  }
  sx_xunlock(&shm_dict_lock);

  if (error) {
   fdclose(td, fp, fd);
   fdrop(fp, td);
   return (error);
  }
 }

 finit(fp, FFLAGS(flags & O_ACCMODE), DTYPE_SHM, shmfd, &shm_ops);

 td->td_retval[0] = fd;
 fdrop(fp, td);

 return (0);
}
