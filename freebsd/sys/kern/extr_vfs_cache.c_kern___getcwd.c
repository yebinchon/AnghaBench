
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnode {int dummy; } ;
struct thread {TYPE_1__* td_proc; } ;
struct filedesc {struct vnode* fd_rdir; struct vnode* fd_cdir; } ;
typedef enum uio_seg { ____Placeholder_uio_seg } uio_seg ;
struct TYPE_2__ {struct filedesc* p_fd; } ;


 int EINVAL ;
 int ENODEV ;
 int FILEDESC_SLOCK (struct filedesc*) ;
 int FILEDESC_SUNLOCK (struct filedesc*) ;
 scalar_t__ KTRPOINT (int ,int ) ;
 int KTR_NAMEI ;
 int M_TEMP ;
 int M_WAITOK ;
 int UIO_SYSSPACE ;
 scalar_t__ __predict_false (int) ;
 int bcopy (char*,char*,scalar_t__) ;
 int copyout (char*,char*,scalar_t__) ;
 int curthread ;
 int disablecwd ;
 int free (char*,int ) ;
 int ktrnamei (char*) ;
 char* malloc (size_t,int ,int ) ;
 scalar_t__ strlen (char*) ;
 int vn_fullpath1 (struct thread*,struct vnode*,struct vnode*,char*,char**,size_t) ;
 int vrefact (struct vnode*) ;
 int vrele (struct vnode*) ;

int
kern___getcwd(struct thread *td, char *buf, enum uio_seg bufseg, size_t buflen,
    size_t path_max)
{
 char *bp, *tmpbuf;
 struct filedesc *fdp;
 struct vnode *cdir, *rdir;
 int error;

 if (__predict_false(disablecwd))
  return (ENODEV);
 if (__predict_false(buflen < 2))
  return (EINVAL);
 if (buflen > path_max)
  buflen = path_max;

 tmpbuf = malloc(buflen, M_TEMP, M_WAITOK);
 fdp = td->td_proc->p_fd;
 FILEDESC_SLOCK(fdp);
 cdir = fdp->fd_cdir;
 vrefact(cdir);
 rdir = fdp->fd_rdir;
 vrefact(rdir);
 FILEDESC_SUNLOCK(fdp);
 error = vn_fullpath1(td, cdir, rdir, tmpbuf, &bp, buflen);
 vrele(rdir);
 vrele(cdir);

 if (!error) {
  if (bufseg == UIO_SYSSPACE)
   bcopy(bp, buf, strlen(bp) + 1);
  else
   error = copyout(bp, buf, strlen(bp) + 1);




 }
 free(tmpbuf, M_TEMP);
 return (error);
}
