
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pipe {int pipe_state; int pipe_sigio; struct pipe* pipe_peer; } ;


 int PIPE_NAMED ;
 int funsetown (int *) ;
 int pipeclose (struct pipe*) ;

void
pipe_dtor(struct pipe *dpipe)
{
 struct pipe *peer;

 peer = (dpipe->pipe_state & PIPE_NAMED) != 0 ? dpipe->pipe_peer : ((void*)0);
 funsetown(&dpipe->pipe_sigio);
 pipeclose(dpipe);
 if (peer != ((void*)0)) {
  funsetown(&peer->pipe_sigio);
  pipeclose(peer);
 }
}
