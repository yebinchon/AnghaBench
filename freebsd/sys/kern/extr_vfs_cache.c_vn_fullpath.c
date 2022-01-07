
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnode {int dummy; } ;
struct thread {TYPE_1__* td_proc; } ;
struct filedesc {struct vnode* fd_rdir; } ;
struct TYPE_2__ {struct filedesc* p_fd; } ;


 int EINVAL ;
 int ENODEV ;
 int FILEDESC_SLOCK (struct filedesc*) ;
 int FILEDESC_SUNLOCK (struct filedesc*) ;
 int MAXPATHLEN ;
 int M_TEMP ;
 int M_WAITOK ;
 scalar_t__ __predict_false (int ) ;
 int disablefullpath ;
 int free (char*,int ) ;
 char* malloc (int ,int ,int ) ;
 int vn_fullpath1 (struct thread*,struct vnode*,struct vnode*,char*,char**,int ) ;
 int vrefact (struct vnode*) ;
 int vrele (struct vnode*) ;

int
vn_fullpath(struct thread *td, struct vnode *vn, char **retbuf, char **freebuf)
{
 char *buf;
 struct filedesc *fdp;
 struct vnode *rdir;
 int error;

 if (__predict_false(disablefullpath))
  return (ENODEV);
 if (__predict_false(vn == ((void*)0)))
  return (EINVAL);

 buf = malloc(MAXPATHLEN, M_TEMP, M_WAITOK);
 fdp = td->td_proc->p_fd;
 FILEDESC_SLOCK(fdp);
 rdir = fdp->fd_rdir;
 vrefact(rdir);
 FILEDESC_SUNLOCK(fdp);
 error = vn_fullpath1(td, vn, rdir, buf, retbuf, MAXPATHLEN);
 vrele(rdir);

 if (!error)
  *freebuf = buf;
 else
  free(buf, M_TEMP);
 return (error);
}
