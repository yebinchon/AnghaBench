
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pipe {int pipe_state; } ;


 int KASSERT (int,char*) ;
 int MA_OWNED ;
 int PIPE_LOCKFL ;
 int PIPE_LOCK_ASSERT (struct pipe*,int ) ;
 int PIPE_LWANT ;
 int wakeup (struct pipe*) ;

__attribute__((used)) static __inline void
pipeunlock(struct pipe *cpipe)
{

 PIPE_LOCK_ASSERT(cpipe, MA_OWNED);
 KASSERT(cpipe->pipe_state & PIPE_LOCKFL,
  ("Unlocked pipe passed to pipeunlock"));
 cpipe->pipe_state &= ~PIPE_LOCKFL;
 if (cpipe->pipe_state & PIPE_LWANT) {
  cpipe->pipe_state &= ~PIPE_LWANT;
  wakeup(cpipe);
 }
}
