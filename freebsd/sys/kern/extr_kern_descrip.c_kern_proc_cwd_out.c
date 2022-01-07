
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbuf {int dummy; } ;
struct proc {int dummy; } ;
struct filedesc {int * fd_cdir; } ;
struct export_fd_buf {int remainder; struct sbuf* sb; struct filedesc* fdp; } ;
typedef int ssize_t ;


 int EINVAL ;
 int FILEDESC_SLOCK (struct filedesc*) ;
 int FILEDESC_SUNLOCK (struct filedesc*) ;
 int FREAD ;
 int KF_FD_TYPE_CWD ;
 int MA_OWNED ;
 int M_TEMP ;
 int M_WAITOK ;
 int PROC_LOCK_ASSERT (struct proc*,int ) ;
 int PROC_UNLOCK (struct proc*) ;
 int export_vnode_to_sb (int *,int ,int ,struct export_fd_buf*) ;
 int fddrop (struct filedesc*) ;
 struct filedesc* fdhold (struct proc*) ;
 int free (struct export_fd_buf*,int ) ;
 struct export_fd_buf* malloc (int,int ,int ) ;
 int vrefact (int *) ;

int
kern_proc_cwd_out(struct proc *p, struct sbuf *sb, ssize_t maxlen)
{
 struct filedesc *fdp;
 struct export_fd_buf *efbuf;
 int error;

 PROC_LOCK_ASSERT(p, MA_OWNED);

 fdp = fdhold(p);
 PROC_UNLOCK(p);
 if (fdp == ((void*)0))
  return (EINVAL);

 efbuf = malloc(sizeof(*efbuf), M_TEMP, M_WAITOK);
 efbuf->fdp = fdp;
 efbuf->sb = sb;
 efbuf->remainder = maxlen;

 FILEDESC_SLOCK(fdp);
 if (fdp->fd_cdir == ((void*)0))
  error = EINVAL;
 else {
  vrefact(fdp->fd_cdir);
  error = export_vnode_to_sb(fdp->fd_cdir, KF_FD_TYPE_CWD,
      FREAD, efbuf);
 }
 FILEDESC_SUNLOCK(fdp);
 fddrop(fdp);
 free(efbuf, M_TEMP);
 return (error);
}
