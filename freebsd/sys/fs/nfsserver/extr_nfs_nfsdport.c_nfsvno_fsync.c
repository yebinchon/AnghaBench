
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_quad_t ;
typedef int u_int64_t ;
struct bufobj {int dummy; } ;
struct vnode {struct bufobj v_bufobj; scalar_t__ v_object; TYPE_2__* v_mount; } ;
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct buf {int b_flags; } ;
typedef int daddr_t ;
struct TYPE_3__ {int f_iosize; } ;
struct TYPE_4__ {int mnt_kern_flag; TYPE_1__ mnt_stat; } ;


 int BO_LOCK (struct bufobj*) ;
 int BO_LOCKPTR (struct bufobj*) ;
 int BO_UNLOCK (struct bufobj*) ;
 scalar_t__ BUF_LOCK (struct buf*,int,int ) ;
 int BUF_UNLOCK (struct buf*) ;
 int B_ASYNC ;
 int B_DELWRI ;
 int B_INVAL ;
 scalar_t__ ENOLCK ;
 int LK_EXCLUSIVE ;
 int LK_INTERLOCK ;
 int LK_SLEEPFAIL ;
 int MAX_COMMIT_COUNT ;
 int MNTK_USES_BCACHE ;
 int MNT_WAIT ;
 int NFSEXITCODE (int) ;
 int OBJPC_SYNC ;
 int PAGE_MASK ;
 int VM_OBJECT_WLOCK (scalar_t__) ;
 int VM_OBJECT_WUNLOCK (scalar_t__) ;
 int VOP_FSYNC (struct vnode*,int ,struct thread*) ;
 int bremfree (struct buf*) ;
 int bwrite (struct buf*) ;
 struct buf* gbincore (struct bufobj*,int) ;
 int nfs_commit_blks ;
 int nfs_commit_miss ;
 scalar_t__ vm_object_mightbedirty (scalar_t__) ;
 int vm_object_page_clean (scalar_t__,int,int,int ) ;

int
nfsvno_fsync(struct vnode *vp, u_int64_t off, int cnt, struct ucred *cred,
    struct thread *td)
{
 int error = 0;
 if (cnt == 0 || cnt > MAX_COMMIT_COUNT ||
     (vp->v_mount->mnt_kern_flag & MNTK_USES_BCACHE) == 0) {



  if (vp->v_object && vm_object_mightbedirty(vp->v_object)) {
   VM_OBJECT_WLOCK(vp->v_object);
   vm_object_page_clean(vp->v_object, 0, 0, OBJPC_SYNC);
   VM_OBJECT_WUNLOCK(vp->v_object);
  }
  error = VOP_FSYNC(vp, MNT_WAIT, td);
 } else {





  int iosize = vp->v_mount->mnt_stat.f_iosize;
  int iomask = iosize - 1;
  struct bufobj *bo;
  daddr_t lblkno;




  if (off & iomask) {
   cnt += off & iomask;
   off &= ~(u_quad_t)iomask;
  }
  if (off & PAGE_MASK) {
   cnt += off & PAGE_MASK;
   off &= ~(u_quad_t)PAGE_MASK;
  }
  lblkno = off / iosize;

  if (vp->v_object && vm_object_mightbedirty(vp->v_object)) {
   VM_OBJECT_WLOCK(vp->v_object);
   vm_object_page_clean(vp->v_object, off, off + cnt,
       OBJPC_SYNC);
   VM_OBJECT_WUNLOCK(vp->v_object);
  }

  bo = &vp->v_bufobj;
  BO_LOCK(bo);
  while (cnt > 0) {
   struct buf *bp;
   if ((bp = gbincore(&vp->v_bufobj, lblkno)) != ((void*)0)) {
    if (BUF_LOCK(bp, LK_EXCLUSIVE | LK_SLEEPFAIL |
        LK_INTERLOCK, BO_LOCKPTR(bo)) == ENOLCK) {
     BO_LOCK(bo);
     continue;
    }
        if ((bp->b_flags & (B_DELWRI|B_INVAL)) ==
        B_DELWRI) {
     bremfree(bp);
     bp->b_flags &= ~B_ASYNC;
     bwrite(bp);
     ++nfs_commit_miss;
    } else
     BUF_UNLOCK(bp);
    BO_LOCK(bo);
   }
   ++nfs_commit_blks;
   if (cnt < iosize)
    break;
   cnt -= iosize;
   ++lblkno;
  }
  BO_UNLOCK(bo);
 }
 NFSEXITCODE(error);
 return (error);
}
