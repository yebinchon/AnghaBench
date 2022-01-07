
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct proc {int p_xsig; int p_xexit; } ;
struct TYPE_2__ {struct proc* p_proc; } ;
struct knote {int kn_sfflags; int kn_fflags; int kn_flags; int kn_data; TYPE_1__ kn_ptr; } ;


 int EV_DROP ;
 int EV_EOF ;
 int EV_ONESHOT ;
 int KW_EXITCODE (int ,int ) ;
 int NOTE_EXIT ;
 int NOTE_PCTRLMASK ;

__attribute__((used)) static int
filt_proc(struct knote *kn, long hint)
{
 struct proc *p;
 u_int event;

 p = kn->kn_ptr.p_proc;
 if (p == ((void*)0))
  return (0);


 event = (u_int)hint & NOTE_PCTRLMASK;


 if (kn->kn_sfflags & event)
  kn->kn_fflags |= event;


 if (event == NOTE_EXIT) {
  kn->kn_flags |= EV_EOF | EV_ONESHOT;
  kn->kn_ptr.p_proc = ((void*)0);
  if (kn->kn_fflags & NOTE_EXIT)
   kn->kn_data = KW_EXITCODE(p->p_xexit, p->p_xsig);
  if (kn->kn_fflags == 0)
   kn->kn_flags |= EV_DROP;
  return (1);
 }

 return (kn->kn_fflags != 0);
}
