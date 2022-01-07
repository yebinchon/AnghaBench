
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int si_note; } ;
struct pipe {int pipe_state; TYPE_1__ pipe_sel; scalar_t__ pipe_sigio; } ;


 int KNOTE_LOCKED (int *,int ) ;
 int MA_OWNED ;
 int PIPE_ASYNC ;
 int PIPE_LOCK_ASSERT (struct pipe*,int ) ;
 int PIPE_SEL ;
 int PSOCK ;
 int SEL_WAITING (TYPE_1__*) ;
 int SIGIO ;
 int pgsigio (scalar_t__*,int ,int ) ;
 int selwakeuppri (TYPE_1__*,int ) ;

void
pipeselwakeup(struct pipe *cpipe)
{

 PIPE_LOCK_ASSERT(cpipe, MA_OWNED);
 if (cpipe->pipe_state & PIPE_SEL) {
  selwakeuppri(&cpipe->pipe_sel, PSOCK);
  if (!SEL_WAITING(&cpipe->pipe_sel))
   cpipe->pipe_state &= ~PIPE_SEL;
 }
 if ((cpipe->pipe_state & PIPE_ASYNC) && cpipe->pipe_sigio)
  pgsigio(&cpipe->pipe_sigio, SIGIO, 0);
 KNOTE_LOCKED(&cpipe->pipe_sel.si_note, 0);
}
