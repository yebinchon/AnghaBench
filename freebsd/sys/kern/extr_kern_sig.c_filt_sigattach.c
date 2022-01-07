
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct proc {int p_klist; } ;
struct TYPE_2__ {struct proc* p_proc; } ;
struct knote {int kn_flags; TYPE_1__ kn_ptr; } ;


 int EV_CLEAR ;
 struct proc* curproc ;
 int knlist_add (int ,struct knote*,int ) ;

__attribute__((used)) static int
filt_sigattach(struct knote *kn)
{
 struct proc *p = curproc;

 kn->kn_ptr.p_proc = p;
 kn->kn_flags |= EV_CLEAR;

 knlist_add(p->p_klist, kn, 0);

 return (0);
}
