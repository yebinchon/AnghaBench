
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {scalar_t__ v_type; struct mount* v_mount; } ;
struct uio {scalar_t__ uio_offset; struct thread* uio_td; } ;
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct mount {int mnt_flag; } ;
struct file {int f_flag; scalar_t__ f_nextoff; int f_cred; struct vnode* f_vnode; } ;
typedef scalar_t__ off_t ;


 int FNONBLOCK ;
 int FOF_OFFSET ;
 int IO_APPEND ;
 int IO_DIRECT ;
 int IO_NDELAY ;
 int IO_SYNC ;
 int IO_UNIT ;
 int KASSERT (int,char*) ;
 int LK_EXCLUSIVE ;
 int LK_RETRY ;
 int LK_SHARED ;
 scalar_t__ MNT_SHARED_WRITES (struct mount*) ;
 int MNT_SYNCHRONOUS ;
 int O_APPEND ;
 int O_DIRECT ;
 int O_FSYNC ;
 int PCATCH ;
 int POSIX_FADV_DONTNEED ;




 scalar_t__ VCHR ;
 int VOP_ADVISE (struct vnode*,scalar_t__,scalar_t__,int ) ;
 int VOP_UNLOCK (struct vnode*,int ) ;
 int VOP_WRITE (struct vnode*,struct uio*,int,int ) ;
 scalar_t__ VREG ;
 int V_WAIT ;
 int bwillwrite () ;
 int get_advice (struct file*,struct uio*) ;
 int mac_vnode_check_write (struct ucred*,int ,struct vnode*) ;
 int sequential_heuristic (struct uio*,struct file*) ;
 int vn_finished_write (struct mount*) ;
 int vn_lock (struct vnode*,int) ;
 int vn_start_write (struct vnode*,struct mount**,int) ;

__attribute__((used)) static int
vn_write(struct file *fp, struct uio *uio, struct ucred *active_cred, int flags,
    struct thread *td)
{
 struct vnode *vp;
 struct mount *mp;
 off_t orig_offset;
 int error, ioflag, lock_flags;
 int advice;

 KASSERT(uio->uio_td == td, ("uio_td %p is not td %p",
     uio->uio_td, td));
 KASSERT(flags & FOF_OFFSET, ("No FOF_OFFSET"));
 vp = fp->f_vnode;
 if (vp->v_type == VREG)
  bwillwrite();
 ioflag = IO_UNIT;
 if (vp->v_type == VREG && (fp->f_flag & O_APPEND))
  ioflag |= IO_APPEND;
 if (fp->f_flag & FNONBLOCK)
  ioflag |= IO_NDELAY;
 if (fp->f_flag & O_DIRECT)
  ioflag |= IO_DIRECT;
 if ((fp->f_flag & O_FSYNC) ||
     (vp->v_mount && (vp->v_mount->mnt_flag & MNT_SYNCHRONOUS)))
  ioflag |= IO_SYNC;
 mp = ((void*)0);
 if (vp->v_type != VCHR &&
     (error = vn_start_write(vp, &mp, V_WAIT | PCATCH)) != 0)
  goto unlock;

 advice = get_advice(fp, uio);

 if (MNT_SHARED_WRITES(mp) ||
     (mp == ((void*)0) && MNT_SHARED_WRITES(vp->v_mount))) {
  lock_flags = LK_SHARED;
 } else {
  lock_flags = LK_EXCLUSIVE;
 }

 vn_lock(vp, lock_flags | LK_RETRY);
 switch (advice) {
 case 130:
 case 128:
 case 131:
  ioflag |= sequential_heuristic(uio, fp);
  break;
 case 129:

  break;
 }
 orig_offset = uio->uio_offset;





  error = VOP_WRITE(vp, uio, ioflag, fp->f_cred);
 fp->f_nextoff = uio->uio_offset;
 VOP_UNLOCK(vp, 0);
 if (vp->v_type != VCHR)
  vn_finished_write(mp);
 if (error == 0 && advice == 131 &&
     orig_offset != uio->uio_offset)





  error = VOP_ADVISE(vp, orig_offset, uio->uio_offset - 1,
      POSIX_FADV_DONTNEED);
unlock:
 return (error);
}
