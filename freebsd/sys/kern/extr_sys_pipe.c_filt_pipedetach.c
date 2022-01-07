
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int si_note; } ;
struct pipe {TYPE_1__ pipe_sel; } ;
struct knote {struct pipe* kn_hook; } ;


 int PIPE_LOCK (struct pipe*) ;
 int PIPE_UNLOCK (struct pipe*) ;
 int knlist_remove (int *,struct knote*,int) ;

__attribute__((used)) static void
filt_pipedetach(struct knote *kn)
{
 struct pipe *cpipe = kn->kn_hook;

 PIPE_LOCK(cpipe);
 knlist_remove(&cpipe->pipe_sel.si_note, kn, 1);
 PIPE_UNLOCK(cpipe);
}
