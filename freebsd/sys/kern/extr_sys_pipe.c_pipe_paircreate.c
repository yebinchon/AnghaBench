
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {int td_ucred; } ;
struct TYPE_2__ {int si_note; } ;
struct pipe {int pipe_state; TYPE_1__ pipe_sel; } ;
struct pipepair {struct pipe pp_wpipe; struct pipe pp_rpipe; } ;


 int M_WAITOK ;
 int PIPE_DIRECTOK ;
 int PIPE_MTX (struct pipe*) ;
 int knlist_init_mtx (int *,int ) ;
 int mac_pipe_create (int ,struct pipepair*) ;
 int mac_pipe_init (struct pipepair*) ;
 int pipe_create (struct pipe*,int) ;
 int pipe_zone ;
 struct pipepair* uma_zalloc (int ,int ) ;

__attribute__((used)) static void
pipe_paircreate(struct thread *td, struct pipepair **p_pp)
{
 struct pipepair *pp;
 struct pipe *rpipe, *wpipe;

 *p_pp = pp = uma_zalloc(pipe_zone, M_WAITOK);
 rpipe = &pp->pp_rpipe;
 wpipe = &pp->pp_wpipe;

 knlist_init_mtx(&rpipe->pipe_sel.si_note, PIPE_MTX(rpipe));
 knlist_init_mtx(&wpipe->pipe_sel.si_note, PIPE_MTX(wpipe));


 pipe_create(rpipe, 1);
 pipe_create(wpipe, 0);

 rpipe->pipe_state |= PIPE_DIRECTOK;
 wpipe->pipe_state |= PIPE_DIRECTOK;
}
