
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct proc {int p_flag; int p_klist; } ;
struct TYPE_2__ {struct proc* p_proc; } ;
struct knote {int kn_sfflags; int kn_flags; int kn_fflags; int kn_sdata; int kn_data; TYPE_1__ kn_ptr; int kn_id; } ;


 int ESRCH ;
 int EV_CLEAR ;
 int EV_FLAG1 ;
 int EV_FLAG2 ;
 int KNOTE_ACTIVATE (struct knote*,int ) ;
 int NOTE_CHILD ;
 int NOTE_EXEC ;
 int NOTE_EXIT ;
 int NOTE_FORK ;
 int PROC_UNLOCK (struct proc*) ;
 int P_WEXIT ;
 int curthread ;
 scalar_t__ filt_proc (struct knote*,int) ;
 int knlist_add (int ,struct knote*,int) ;
 int p_cansee (int ,struct proc*) ;
 struct proc* pfind (int ) ;
 struct proc* pfind_any (int ) ;

__attribute__((used)) static int
filt_procattach(struct knote *kn)
{
 struct proc *p;
 int error;
 bool exiting, immediate;

 exiting = immediate = 0;
 if (kn->kn_sfflags & NOTE_EXIT)
  p = pfind_any(kn->kn_id);
 else
  p = pfind(kn->kn_id);
 if (p == ((void*)0))
  return (ESRCH);
 if (p->p_flag & P_WEXIT)
  exiting = 1;

 if ((error = p_cansee(curthread, p))) {
  PROC_UNLOCK(p);
  return (error);
 }

 kn->kn_ptr.p_proc = p;
 kn->kn_flags |= EV_CLEAR;





 if (kn->kn_flags & EV_FLAG2) {
  kn->kn_flags &= ~EV_FLAG2;
  kn->kn_data = kn->kn_sdata;
  kn->kn_fflags = NOTE_CHILD;
  kn->kn_sfflags &= ~(NOTE_EXIT | NOTE_EXEC | NOTE_FORK);
  immediate = 1;
 }




 if (kn->kn_flags & EV_FLAG1) {
  kn->kn_flags &= ~EV_FLAG1;
 }

 knlist_add(p->p_klist, kn, 1);







 if (immediate || (exiting && filt_proc(kn, NOTE_EXIT)))
  KNOTE_ACTIVATE(kn, 0);

 PROC_UNLOCK(p);

 return (0);
}
