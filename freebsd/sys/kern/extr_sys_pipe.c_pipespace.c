
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pipe {int pipe_state; } ;


 int KASSERT (int,char*) ;
 int PIPE_LOCKFL ;
 int pipespace_new (struct pipe*,int) ;

__attribute__((used)) static int
pipespace(struct pipe *cpipe, int size)
{

 KASSERT(cpipe->pipe_state & PIPE_LOCKFL,
  ("Unlocked pipe passed to pipespace"));
 return (pipespace_new(cpipe, size));
}
