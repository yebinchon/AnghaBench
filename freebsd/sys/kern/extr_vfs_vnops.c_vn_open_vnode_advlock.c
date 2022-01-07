
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int v_iflag; } ;
struct flock {int l_type; scalar_t__ l_len; scalar_t__ l_start; int l_whence; } ;
struct file {scalar_t__ f_type; int f_flag; } ;
typedef int caddr_t ;


 int ASSERT_VOP_LOCKED (struct vnode*,char*) ;
 scalar_t__ DTYPE_NONE ;
 scalar_t__ DTYPE_VNODE ;
 int ENOENT ;
 int EOPNOTSUPP ;
 int FHASLOCK ;
 int FNONBLOCK ;
 int F_FLOCK ;
 int F_RDLCK ;
 int F_SETLK ;
 int F_WAIT ;
 int F_WRLCK ;
 int KASSERT (int ,char*) ;
 int LK_RETRY ;
 int O_EXLOCK ;
 int O_SHLOCK ;
 int SEEK_SET ;
 int VI_DOOMED ;
 int VOP_ADVLOCK (struct vnode*,int ,int ,struct flock*,int) ;
 int VOP_ISLOCKED (struct vnode*) ;
 int VOP_UNLOCK (struct vnode*,int ) ;
 int vn_lock (struct vnode*,int) ;

__attribute__((used)) static int
vn_open_vnode_advlock(struct vnode *vp, int fmode, struct file *fp)
{
 struct flock lf;
 int error, lock_flags, type;

 ASSERT_VOP_LOCKED(vp, "vn_open_vnode_advlock");
 if ((fmode & (O_EXLOCK | O_SHLOCK)) == 0)
  return (0);
 KASSERT(fp != ((void*)0), ("open with flock requires fp"));
 if (fp->f_type != DTYPE_NONE && fp->f_type != DTYPE_VNODE)
  return (EOPNOTSUPP);

 lock_flags = VOP_ISLOCKED(vp);
 VOP_UNLOCK(vp, 0);

 lf.l_whence = SEEK_SET;
 lf.l_start = 0;
 lf.l_len = 0;
 lf.l_type = (fmode & O_EXLOCK) != 0 ? F_WRLCK : F_RDLCK;
 type = F_FLOCK;
 if ((fmode & FNONBLOCK) == 0)
  type |= F_WAIT;
 error = VOP_ADVLOCK(vp, (caddr_t)fp, F_SETLK, &lf, type);
 if (error == 0)
  fp->f_flag |= FHASLOCK;

 vn_lock(vp, lock_flags | LK_RETRY);
 if (error == 0 && (vp->v_iflag & VI_DOOMED) != 0)
  error = ENOENT;
 return (error);
}
