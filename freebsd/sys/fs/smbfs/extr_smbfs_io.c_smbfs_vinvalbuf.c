
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * bo_object; } ;
struct vnode {int v_iflag; TYPE_1__ v_bufobj; } ;
struct thread {int dummy; } ;
struct smbnode {int n_flag; } ;


 int EINTR ;
 int ERESTART ;
 int NFLUSHINPROG ;
 int NFLUSHWANT ;
 int NMODIFIED ;
 int OBJPC_SYNC ;
 int PCATCH ;
 scalar_t__ PRIBIO ;
 int VI_DOOMED ;
 int VM_OBJECT_WLOCK (int *) ;
 int VM_OBJECT_WUNLOCK (int *) ;
 struct smbnode* VTOSMB (struct vnode*) ;
 int V_SAVE ;
 int hz ;
 int smb_td_intr (struct thread*) ;
 int tsleep (int*,scalar_t__,char*,int) ;
 int vinvalbuf (struct vnode*,int ,int ,int ) ;
 int vm_object_page_clean (int *,int ,int ,int ) ;
 int wakeup (int*) ;

int
smbfs_vinvalbuf(struct vnode *vp, struct thread *td)
{
 struct smbnode *np = VTOSMB(vp);
 int error = 0;

 if (vp->v_iflag & VI_DOOMED)
  return 0;

 while (np->n_flag & NFLUSHINPROG) {
  np->n_flag |= NFLUSHWANT;
  error = tsleep(&np->n_flag, PRIBIO + 2, "smfsvinv", 2 * hz);
  error = smb_td_intr(td);
  if (error == EINTR)
   return EINTR;
 }
 np->n_flag |= NFLUSHINPROG;

 if (vp->v_bufobj.bo_object != ((void*)0)) {
  VM_OBJECT_WLOCK(vp->v_bufobj.bo_object);
  vm_object_page_clean(vp->v_bufobj.bo_object, 0, 0, OBJPC_SYNC);
  VM_OBJECT_WUNLOCK(vp->v_bufobj.bo_object);
 }

 error = vinvalbuf(vp, V_SAVE, PCATCH, 0);
 while (error) {
  if (error == ERESTART || error == EINTR) {
   np->n_flag &= ~NFLUSHINPROG;
   if (np->n_flag & NFLUSHWANT) {
    np->n_flag &= ~NFLUSHWANT;
    wakeup(&np->n_flag);
   }
   return EINTR;
  }
  error = vinvalbuf(vp, V_SAVE, PCATCH, 0);
 }
 np->n_flag &= ~(NMODIFIED | NFLUSHINPROG);
 if (np->n_flag & NFLUSHWANT) {
  np->n_flag &= ~NFLUSHWANT;
  wakeup(&np->n_flag);
 }
 return (error);
}
