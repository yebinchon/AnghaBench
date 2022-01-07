
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct proc {int p_klist; } ;
struct TYPE_2__ {struct proc* p_proc; } ;
struct knote {TYPE_1__ kn_ptr; } ;


 int knlist_remove (int ,struct knote*,int ) ;

__attribute__((used)) static void
filt_sigdetach(struct knote *kn)
{
 struct proc *p = kn->kn_ptr.p_proc;

 knlist_remove(p->p_klist, kn, 0);
}
