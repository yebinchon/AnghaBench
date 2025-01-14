
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnode {int dummy; } ;
struct tty {struct session* t_session; } ;
struct session {int * s_leader; int * s_ttydp; struct vnode* s_ttyvp; struct tty* s_ttyp; } ;
struct proc {int p_flag; scalar_t__ p_pgrp; struct session* p_session; int p_children; TYPE_1__* p_pptr; } ;
struct TYPE_2__ {scalar_t__ p_pgrp; } ;


 scalar_t__ LIST_EMPTY (int *) ;
 int LK_EXCLUSIVE ;
 int MPASS (int) ;
 int PROC_LOCK (struct proc*) ;
 int PROC_UNLOCK (struct proc*) ;
 int P_WEXIT ;
 int REVOKEALL ;
 scalar_t__ SESS_LEADER (struct proc*) ;
 int SESS_LOCK (struct session*) ;
 int SESS_UNLOCK (struct session*) ;
 int SIGHUP ;
 int VOP_REVOKE (struct vnode*,int ) ;
 int VOP_UNLOCK (struct vnode*,int ) ;
 struct proc* curproc ;
 int fixjobc (struct proc*,scalar_t__,int ) ;
 int proctree_lock ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;
 int tty_lock (struct tty*) ;
 int tty_signal_pgrp (struct tty*,int ) ;
 int tty_unlock (struct tty*) ;
 scalar_t__ vn_lock (struct vnode*,int ) ;
 int vrele (struct vnode*) ;

void
killjobc(void)
{
 struct session *sp;
 struct tty *tp;
 struct proc *p;
 struct vnode *ttyvp;

 p = curproc;
 MPASS(p->p_flag & P_WEXIT);




 PROC_LOCK(p);
 if (!SESS_LEADER(p) &&
     (p->p_pgrp == p->p_pptr->p_pgrp) &&
     LIST_EMPTY(&p->p_children)) {
  PROC_UNLOCK(p);
  return;
 }
 PROC_UNLOCK(p);

 sx_xlock(&proctree_lock);
 if (SESS_LEADER(p)) {
  sp = p->p_session;






  SESS_LOCK(sp);
  ttyvp = sp->s_ttyvp;
  tp = sp->s_ttyp;
  sp->s_ttyvp = ((void*)0);
  sp->s_ttydp = ((void*)0);
  sp->s_leader = ((void*)0);
  SESS_UNLOCK(sp);
  if (tp != ((void*)0)) {
   tty_lock(tp);
   if (tp->t_session == sp)
    tty_signal_pgrp(tp, SIGHUP);
   tty_unlock(tp);
  }

  if (ttyvp != ((void*)0)) {
   sx_xunlock(&proctree_lock);
   if (vn_lock(ttyvp, LK_EXCLUSIVE) == 0) {
    VOP_REVOKE(ttyvp, REVOKEALL);
    VOP_UNLOCK(ttyvp, 0);
   }
   vrele(ttyvp);
   sx_xlock(&proctree_lock);
  }
 }
 fixjobc(p, p->p_pgrp, 0);
 sx_xunlock(&proctree_lock);
}
