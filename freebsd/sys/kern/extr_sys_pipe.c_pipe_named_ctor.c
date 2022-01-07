
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct pipe {int pipe_state; } ;
struct pipepair {struct pipe pp_rpipe; } ;


 int PIPE_NAMED ;
 int pipe_paircreate (struct thread*,struct pipepair**) ;

void
pipe_named_ctor(struct pipe **ppipe, struct thread *td)
{
 struct pipepair *pp;

 pipe_paircreate(td, &pp);
 pp->pp_rpipe.pipe_state |= PIPE_NAMED;
 *ppipe = &pp->pp_rpipe;
}
