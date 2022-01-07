
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pipepair {int dummy; } ;
struct TYPE_2__ {int si_note; } ;
struct pipe {scalar_t__ pipe_present; struct pipepair* pipe_pair; TYPE_1__ pipe_sel; int pipe_state; struct pipe* pipe_peer; scalar_t__ pipe_busy; } ;


 int KASSERT (int ,char*) ;
 int KNOTE_LOCKED (int *,int ) ;
 scalar_t__ PIPE_ACTIVE ;
 scalar_t__ PIPE_CLOSING ;
 int PIPE_EOF ;
 scalar_t__ PIPE_FINALIZED ;
 int PIPE_LOCK (struct pipe*) ;
 int PIPE_MTX (struct pipe*) ;
 int PIPE_UNLOCK (struct pipe*) ;
 int PIPE_WANT ;
 int PRIBIO ;
 int knlist_clear (int *,int) ;
 int knlist_destroy (int *) ;
 int mac_pipe_destroy (struct pipepair*) ;
 int msleep (struct pipe*,int ,int ,char*,int ) ;
 int pipe_free_kmem (struct pipe*) ;
 int pipe_zone ;
 int pipelock (struct pipe*,int ) ;
 int pipeselwakeup (struct pipe*) ;
 int pipeunlock (struct pipe*) ;
 int seldrain (TYPE_1__*) ;
 int uma_zfree (int ,struct pipepair*) ;
 int wakeup (struct pipe*) ;

__attribute__((used)) static void
pipeclose(struct pipe *cpipe)
{
 struct pipepair *pp;
 struct pipe *ppipe;

 KASSERT(cpipe != ((void*)0), ("pipeclose: cpipe == NULL"));

 PIPE_LOCK(cpipe);
 pipelock(cpipe, 0);
 pp = cpipe->pipe_pair;

 pipeselwakeup(cpipe);





 cpipe->pipe_state |= PIPE_EOF;
 while (cpipe->pipe_busy) {
  wakeup(cpipe);
  cpipe->pipe_state |= PIPE_WANT;
  pipeunlock(cpipe);
  msleep(cpipe, PIPE_MTX(cpipe), PRIBIO, "pipecl", 0);
  pipelock(cpipe, 0);
 }





 ppipe = cpipe->pipe_peer;
 if (ppipe->pipe_present == PIPE_ACTIVE) {
  pipeselwakeup(ppipe);

  ppipe->pipe_state |= PIPE_EOF;
  wakeup(ppipe);
  KNOTE_LOCKED(&ppipe->pipe_sel.si_note, 0);
 }







 PIPE_UNLOCK(cpipe);
 pipe_free_kmem(cpipe);
 PIPE_LOCK(cpipe);
 cpipe->pipe_present = PIPE_CLOSING;
 pipeunlock(cpipe);






 knlist_clear(&cpipe->pipe_sel.si_note, 1);
 cpipe->pipe_present = PIPE_FINALIZED;
 seldrain(&cpipe->pipe_sel);
 knlist_destroy(&cpipe->pipe_sel.si_note);





 if (ppipe->pipe_present == PIPE_FINALIZED) {
  PIPE_UNLOCK(cpipe);



  uma_zfree(pipe_zone, cpipe->pipe_pair);
 } else
  PIPE_UNLOCK(cpipe);
}
