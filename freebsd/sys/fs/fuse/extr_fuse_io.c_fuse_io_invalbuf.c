
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * bo_object; } ;
struct vnode {int v_iflag; TYPE_2__ v_bufobj; TYPE_1__* v_mount; } ;
struct thread {int td_siglist; struct proc* td_proc; } ;
struct proc {int p_siglist; } ;
struct fuse_vnode_data {int flag; } ;
struct TYPE_3__ {int mnt_kern_flag; } ;


 int ASSERT_VOP_ELOCKED (struct vnode*,char*) ;
 int EINTR ;
 int EIO ;
 int ERESTART ;
 int FN_FLUSHINPROG ;
 int FN_FLUSHWANT ;
 int MNTK_UNMOUNTF ;
 int OBJPC_SYNC ;
 int PCATCH ;
 scalar_t__ PRIBIO ;
 int PROC_LOCK (struct proc*) ;
 int PROC_UNLOCK (struct proc*) ;
 scalar_t__ SIGNOTEMPTY (int ) ;
 int VI_DOOMED ;
 int VM_OBJECT_WLOCK (int *) ;
 int VM_OBJECT_WUNLOCK (int *) ;
 struct fuse_vnode_data* VTOFUD (struct vnode*) ;
 int V_SAVE ;
 int hz ;
 int tsleep (int*,scalar_t__,char*,int) ;
 int vinvalbuf (struct vnode*,int ,int ,int ) ;
 int vm_object_page_clean (int *,int ,int ,int ) ;
 int wakeup (int*) ;

int
fuse_io_invalbuf(struct vnode *vp, struct thread *td)
{
 struct fuse_vnode_data *fvdat = VTOFUD(vp);
 int error = 0;

 if (vp->v_iflag & VI_DOOMED)
  return 0;

 ASSERT_VOP_ELOCKED(vp, "fuse_io_invalbuf");

 while (fvdat->flag & FN_FLUSHINPROG) {
  struct proc *p = td->td_proc;

  if (vp->v_mount->mnt_kern_flag & MNTK_UNMOUNTF)
   return EIO;
  fvdat->flag |= FN_FLUSHWANT;
  tsleep(&fvdat->flag, PRIBIO + 2, "fusevinv", 2 * hz);
  error = 0;
  if (p != ((void*)0)) {
   PROC_LOCK(p);
   if (SIGNOTEMPTY(p->p_siglist) ||
       SIGNOTEMPTY(td->td_siglist))
    error = EINTR;
   PROC_UNLOCK(p);
  }
  if (error == EINTR)
   return EINTR;
 }
 fvdat->flag |= FN_FLUSHINPROG;

 if (vp->v_bufobj.bo_object != ((void*)0)) {
  VM_OBJECT_WLOCK(vp->v_bufobj.bo_object);
  vm_object_page_clean(vp->v_bufobj.bo_object, 0, 0, OBJPC_SYNC);
  VM_OBJECT_WUNLOCK(vp->v_bufobj.bo_object);
 }
 error = vinvalbuf(vp, V_SAVE, PCATCH, 0);
 while (error) {
  if (error == ERESTART || error == EINTR) {
   fvdat->flag &= ~FN_FLUSHINPROG;
   if (fvdat->flag & FN_FLUSHWANT) {
    fvdat->flag &= ~FN_FLUSHWANT;
    wakeup(&fvdat->flag);
   }
   return EINTR;
  }
  error = vinvalbuf(vp, V_SAVE, PCATCH, 0);
 }
 fvdat->flag &= ~FN_FLUSHINPROG;
 if (fvdat->flag & FN_FLUSHWANT) {
  fvdat->flag &= ~FN_FLUSHWANT;
  wakeup(&fvdat->flag);
 }
 return (error);
}
