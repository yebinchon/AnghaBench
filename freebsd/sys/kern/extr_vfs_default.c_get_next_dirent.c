
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {scalar_t__ v_type; } ;
struct uio {int uio_iovcnt; int uio_resid; int uio_offset; struct thread* uio_td; int uio_rw; int uio_segflg; struct iovec* uio_iov; } ;
struct thread {int td_ucred; } ;
struct iovec {char* iov_base; int iov_len; } ;
struct dirent {int d_reclen; } ;
typedef int off_t ;


 int DIRENT_MINSIZE ;
 int EINVAL ;
 int ENOENT ;
 int KASSERT (int,char*) ;
 int UIO_READ ;
 int UIO_SYSSPACE ;
 scalar_t__ VDIR ;
 int VOP_ISLOCKED (struct vnode*) ;
 int VOP_READDIR (struct vnode*,struct uio*,int ,int*,int *,int *) ;
 int mac_vnode_check_readdir (int ,struct vnode*) ;

__attribute__((used)) static int
get_next_dirent(struct vnode *vp, struct dirent **dpp, char *dirbuf,
  int dirbuflen, off_t *off, char **cpos, int *len,
  int *eofflag, struct thread *td)
{
 int error, reclen;
 struct uio uio;
 struct iovec iov;
 struct dirent *dp;

 KASSERT(VOP_ISLOCKED(vp), ("vp %p is not locked", vp));
 KASSERT(vp->v_type == VDIR, ("vp %p is not a directory", vp));

 if (*len == 0) {
  iov.iov_base = dirbuf;
  iov.iov_len = dirbuflen;

  uio.uio_iov = &iov;
  uio.uio_iovcnt = 1;
  uio.uio_offset = *off;
  uio.uio_resid = dirbuflen;
  uio.uio_segflg = UIO_SYSSPACE;
  uio.uio_rw = UIO_READ;
  uio.uio_td = td;

  *eofflag = 0;





   error = VOP_READDIR(vp, &uio, td->td_ucred, eofflag,
        ((void*)0), ((void*)0));
  if (error)
   return (error);

  *off = uio.uio_offset;

  *cpos = dirbuf;
  *len = (dirbuflen - uio.uio_resid);

  if (*len == 0)
   return (ENOENT);
 }

 dp = (struct dirent *)(*cpos);
 reclen = dp->d_reclen;
 *dpp = dp;


 if (reclen < DIRENT_MINSIZE)
  return (EINVAL);

 *cpos += reclen;
 *len -= reclen;

 return (0);
}
