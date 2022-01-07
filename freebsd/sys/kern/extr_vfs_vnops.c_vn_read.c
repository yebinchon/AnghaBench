
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct uio {scalar_t__ uio_offset; struct thread* uio_td; } ;
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct file {int f_flag; scalar_t__ f_nextoff; int f_cred; struct vnode* f_vnode; } ;
typedef scalar_t__ off_t ;


 int FNONBLOCK ;
 int FOF_OFFSET ;
 int IO_DIRECT ;
 int IO_NDELAY ;
 int KASSERT (int,char*) ;
 int LK_RETRY ;
 int LK_SHARED ;
 int O_DIRECT ;
 int POSIX_FADV_DONTNEED ;




 int VOP_ADVISE (struct vnode*,scalar_t__,scalar_t__,int ) ;
 int VOP_READ (struct vnode*,struct uio*,int,int ) ;
 int VOP_UNLOCK (struct vnode*,int ) ;
 int get_advice (struct file*,struct uio*) ;
 int mac_vnode_check_read (struct ucred*,int ,struct vnode*) ;
 int sequential_heuristic (struct uio*,struct file*) ;
 int vn_lock (struct vnode*,int) ;

__attribute__((used)) static int
vn_read(struct file *fp, struct uio *uio, struct ucred *active_cred, int flags,
    struct thread *td)
{
 struct vnode *vp;
 off_t orig_offset;
 int error, ioflag;
 int advice;

 KASSERT(uio->uio_td == td, ("uio_td %p is not td %p",
     uio->uio_td, td));
 KASSERT(flags & FOF_OFFSET, ("No FOF_OFFSET"));
 vp = fp->f_vnode;
 ioflag = 0;
 if (fp->f_flag & FNONBLOCK)
  ioflag |= IO_NDELAY;
 if (fp->f_flag & O_DIRECT)
  ioflag |= IO_DIRECT;
 advice = get_advice(fp, uio);
 vn_lock(vp, LK_SHARED | LK_RETRY);

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





  error = VOP_READ(vp, uio, ioflag, fp->f_cred);
 fp->f_nextoff = uio->uio_offset;
 VOP_UNLOCK(vp, 0);
 if (error == 0 && advice == 131 &&
     orig_offset != uio->uio_offset)





  error = VOP_ADVISE(vp, orig_offset, uio->uio_offset - 1,
      POSIX_FADV_DONTNEED);
 return (error);
}
