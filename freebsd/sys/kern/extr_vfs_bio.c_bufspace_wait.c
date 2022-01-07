
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {scalar_t__ v_type; } ;
struct thread {int td_pflags; } ;
struct bufdomain {scalar_t__ bd_wanted; } ;


 int BD_LOCK (struct bufdomain*) ;
 int BD_LOCKPTR (struct bufdomain*) ;
 int BD_UNLOCK (struct bufdomain*) ;
 int GB_NOWAIT_BD ;
 int PRIBIO ;
 int TDP_BUFNEED ;
 int TDP_NORUNNINGBUF ;
 scalar_t__ VCHR ;
 int buf_flush (struct vnode*,struct bufdomain*,int ) ;
 struct thread* curthread ;
 int flushbufqtarget ;
 int msleep (scalar_t__*,int ,int,char*,int) ;

__attribute__((used)) static void
bufspace_wait(struct bufdomain *bd, struct vnode *vp, int gbflags,
    int slpflag, int slptimeo)
{
 struct thread *td;
 int error, fl, norunbuf;

 if ((gbflags & GB_NOWAIT_BD) != 0)
  return;

 td = curthread;
 BD_LOCK(bd);
 while (bd->bd_wanted) {
  if (vp != ((void*)0) && vp->v_type != VCHR &&
      (td->td_pflags & TDP_BUFNEED) == 0) {
   BD_UNLOCK(bd);
   norunbuf = ~(TDP_BUFNEED | TDP_NORUNNINGBUF) |
       (td->td_pflags & TDP_NORUNNINGBUF);
   td->td_pflags |= TDP_BUFNEED | TDP_NORUNNINGBUF;
   fl = buf_flush(vp, bd, flushbufqtarget);
   td->td_pflags &= norunbuf;
   BD_LOCK(bd);
   if (fl != 0)
    continue;
   if (bd->bd_wanted == 0)
    break;
  }
  error = msleep(&bd->bd_wanted, BD_LOCKPTR(bd),
      (PRIBIO + 4) | slpflag, "newbuf", slptimeo);
  if (error != 0)
   break;
 }
 BD_UNLOCK(bd);
}
