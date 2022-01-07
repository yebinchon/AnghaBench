
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct thread {TYPE_3__* td_ucred; TYPE_1__* td_proc; } ;
struct ksem {int ks_flags; } ;
struct filedesc {int fd_cmask; } ;
struct file {int dummy; } ;
typedef int semid_t ;
typedef int mode_t ;
struct TYPE_8__ {TYPE_2__* cr_prison; } ;
struct TYPE_7__ {char* pr_path; } ;
struct TYPE_6__ {struct filedesc* p_fd; } ;
typedef int Fnv32_t ;


 int ACCESSPERMS ;
 int AUDIT_ARG_FFLAGS (int) ;
 int AUDIT_ARG_MODE (int) ;
 int AUDIT_ARG_UPATH1_CANON (char*) ;
 int AUDIT_ARG_VALUE (unsigned int) ;
 int DTYPE_SEM ;
 int EEXIST ;
 int EINVAL ;
 int ENFILE ;
 int ENOENT ;
 int ENOSPC ;
 int FNV1_32_INIT ;
 int FREAD ;
 int FWRITE ;
 int KASSERT (int ,char*) ;
 int KS_ANONYMOUS ;
 scalar_t__ MAXPATHLEN ;
 int M_KSEM ;
 int M_WAITOK ;
 int O_CLOEXEC ;
 int O_CREAT ;
 int O_EXCL ;
 unsigned int SEM_VALUE_MAX ;
 int copyinstr (char const*,char*,scalar_t__,int *) ;
 int falloc (struct thread*,struct file**,int*,int ) ;
 int fdclose (struct thread*,struct file*,int) ;
 int fdrop (struct file*,struct thread*) ;
 int finit (struct file*,int,int ,struct ksem*,int *) ;
 int fnv_32_str (char*,int ) ;
 int free (char*,int ) ;
 int ksem_access (struct ksem*,TYPE_3__*) ;
 struct ksem* ksem_alloc (TYPE_3__*,int,unsigned int) ;
 int ksem_create_copyout_semid (struct thread*,int *,int,int) ;
 int ksem_dict_lock ;
 int ksem_hold (struct ksem*) ;
 int ksem_insert (char*,int ,struct ksem*) ;
 struct ksem* ksem_lookup (char*,int ) ;
 int ksem_ops ;
 int mac_posixsem_check_open (TYPE_3__*,struct ksem*) ;
 char* malloc (scalar_t__,int ,int ) ;
 scalar_t__ strcmp (char const*,char*) ;
 size_t strlcpy (char*,char const*,scalar_t__) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;

__attribute__((used)) static int
ksem_create(struct thread *td, const char *name, semid_t *semidp, mode_t mode,
    unsigned int value, int flags, int compat32)
{
 struct filedesc *fdp;
 struct ksem *ks;
 struct file *fp;
 char *path;
 const char *pr_path;
 size_t pr_pathlen;
 Fnv32_t fnv;
 int error, fd;

 AUDIT_ARG_FFLAGS(flags);
 AUDIT_ARG_MODE(mode);
 AUDIT_ARG_VALUE(value);

 if (value > SEM_VALUE_MAX)
  return (EINVAL);

 fdp = td->td_proc->p_fd;
 mode = (mode & ~fdp->fd_cmask) & ACCESSPERMS;
 error = falloc(td, &fp, &fd, O_CLOEXEC);
 if (error) {
  if (name == ((void*)0))
   error = ENOSPC;
  return (error);
 }






 error = ksem_create_copyout_semid(td, semidp, fd, compat32);
 if (error) {
  fdclose(td, fp, fd);
  fdrop(fp, td);
  return (error);
 }

 if (name == ((void*)0)) {

  ks = ksem_alloc(td->td_ucred, mode, value);
  if (ks == ((void*)0))
   error = ENOSPC;
  else
   ks->ks_flags |= KS_ANONYMOUS;
 } else {
  path = malloc(MAXPATHLEN, M_KSEM, M_WAITOK);
  pr_path = td->td_ucred->cr_prison->pr_path;


  pr_pathlen = strcmp(pr_path, "/") == 0 ? 0
      : strlcpy(path, pr_path, MAXPATHLEN);
  error = copyinstr(name, path + pr_pathlen,
      MAXPATHLEN - pr_pathlen, ((void*)0));


  if (error == 0 && path[pr_pathlen] != '/')
   error = EINVAL;
  if (error) {
   fdclose(td, fp, fd);
   fdrop(fp, td);
   free(path, M_KSEM);
   return (error);
  }

  AUDIT_ARG_UPATH1_CANON(path);
  fnv = fnv_32_str(path, FNV1_32_INIT);
  sx_xlock(&ksem_dict_lock);
  ks = ksem_lookup(path, fnv);
  if (ks == ((void*)0)) {

   if (flags & O_CREAT) {
    ks = ksem_alloc(td->td_ucred, mode, value);
    if (ks == ((void*)0))
     error = ENFILE;
    else {
     ksem_insert(path, fnv, ks);
     path = ((void*)0);
    }
   } else
    error = ENOENT;
  } else {




   if ((flags & (O_CREAT | O_EXCL)) ==
       (O_CREAT | O_EXCL))
    error = EEXIST;
   else {





    error = ksem_access(ks, td->td_ucred);
   }
   if (error == 0)
    ksem_hold(ks);




  }
  sx_xunlock(&ksem_dict_lock);
  if (path)
   free(path, M_KSEM);
 }

 if (error) {
  KASSERT(ks == ((void*)0), ("ksem_create error with a ksem"));
  fdclose(td, fp, fd);
  fdrop(fp, td);
  return (error);
 }
 KASSERT(ks != ((void*)0), ("ksem_create w/o a ksem"));

 finit(fp, FREAD | FWRITE, DTYPE_SEM, ks, &ksem_ops);

 fdrop(fp, td);

 return (0);
}
