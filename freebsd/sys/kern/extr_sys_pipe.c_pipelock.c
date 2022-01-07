
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pipe {int pipe_state; } ;


 int MA_OWNED ;
 int PCATCH ;
 int PIPE_LOCKFL ;
 int PIPE_LOCK_ASSERT (struct pipe*,int ) ;
 int PIPE_LWANT ;
 int PIPE_MTX (struct pipe*) ;
 int PRIBIO ;
 int msleep (struct pipe*,int ,int,char*,int ) ;

__attribute__((used)) static __inline int
pipelock(struct pipe *cpipe, int catch)
{
 int error;

 PIPE_LOCK_ASSERT(cpipe, MA_OWNED);
 while (cpipe->pipe_state & PIPE_LOCKFL) {
  cpipe->pipe_state |= PIPE_LWANT;
  error = msleep(cpipe, PIPE_MTX(cpipe),
      catch ? (PRIBIO | PCATCH) : PRIBIO,
      "pipelk", 0);
  if (error != 0)
   return (error);
 }
 cpipe->pipe_state |= PIPE_LOCKFL;
 return (0);
}
