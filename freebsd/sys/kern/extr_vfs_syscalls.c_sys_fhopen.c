
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct thread {int td_dupfd; int* td_retval; int td_ucred; } ;
struct mount {int dummy; } ;
struct file {int f_seqcount; int f_flag; struct vnode* f_vnode; int * f_ops; } ;
struct fhopen_args {int u_fhp; int flags; } ;
struct fhandle {int fh_fid; int fh_fsid; } ;
typedef int fhp ;


 int DTYPE_VNODE ;
 int EINVAL ;
 int ESTALE ;
 int FFLAGS (int ) ;
 int FHASLOCK ;
 int FMASK ;
 int FREAD ;
 int FWRITE ;
 int KASSERT (int,char*) ;
 int LK_EXCLUSIVE ;
 int O_CREAT ;
 int O_TRUNC ;
 int PRIV_VFS_FHOPEN ;
 int VFS_FHTOVP (struct mount*,int *,int ,struct vnode**) ;
 int VOP_UNLOCK (struct vnode*,int ) ;
 int badfileops ;
 int copyin (int ,struct fhandle*,int) ;
 int falloc_noinstall (struct thread*,struct file**) ;
 int fdrop (struct file*,struct thread*) ;
 int finit (struct file*,int,int ,struct vnode*,int *) ;
 int finstall (struct thread*,struct file*,int*,int,int *) ;
 int fo_truncate (struct file*,int ,int ,struct thread*) ;
 int priv_check (struct thread*,int ) ;
 struct mount* vfs_busyfs (int *) ;
 int vfs_unbusy (struct mount*) ;
 int vn_open_vnode (struct vnode*,int,int ,struct thread*,struct file*) ;
 int vnops ;
 int vput (struct vnode*) ;

int
sys_fhopen(struct thread *td, struct fhopen_args *uap)
{
 struct mount *mp;
 struct vnode *vp;
 struct fhandle fhp;
 struct file *fp;
 int fmode, error;
 int indx;

 error = priv_check(td, PRIV_VFS_FHOPEN);
 if (error != 0)
  return (error);
 indx = -1;
 fmode = FFLAGS(uap->flags);

 if (((fmode & (FREAD | FWRITE)) == 0) || (fmode & O_CREAT))
  return (EINVAL);
 error = copyin(uap->u_fhp, &fhp, sizeof(fhp));
 if (error != 0)
  return(error);

 mp = vfs_busyfs(&fhp.fh_fsid);
 if (mp == ((void*)0))
  return (ESTALE);

 error = VFS_FHTOVP(mp, &fhp.fh_fid, LK_EXCLUSIVE, &vp);
 vfs_unbusy(mp);
 if (error != 0)
  return (error);

 error = falloc_noinstall(td, &fp);
 if (error != 0) {
  vput(vp);
  return (error);
 }
 error = vn_open_vnode(vp, fmode, td->td_ucred, td, fp);
 if (error != 0) {
  KASSERT(fp->f_ops == &badfileops,
      ("VOP_OPEN in fhopen() set f_ops"));
  KASSERT(td->td_dupfd < 0,
      ("fhopen() encountered fdopen()"));

  vput(vp);
  goto bad;
 }



 fp->f_vnode = vp;
 fp->f_seqcount = 1;
 finit(fp, (fmode & FMASK) | (fp->f_flag & FHASLOCK), DTYPE_VNODE, vp,
     &vnops);
 VOP_UNLOCK(vp, 0);
 if ((fmode & O_TRUNC) != 0) {
  error = fo_truncate(fp, 0, td->td_ucred, td);
  if (error != 0)
   goto bad;
 }

 error = finstall(td, fp, &indx, fmode, ((void*)0));
bad:
 fdrop(fp, td);
 td->td_retval[0] = indx;
 return (error);
}
