
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pipe {int pipe_ino; } ;


 int PIPE_SIZE ;
 int SMALL_PIPE_SIZE ;
 int alloc_unr64 (int *) ;
 int amountpipekva ;
 int maxpipekva ;
 int pipeino_unr ;
 int pipespace_new (struct pipe*,int ) ;

__attribute__((used)) static void
pipe_create(struct pipe *pipe, int backing)
{

 if (backing) {







  if (amountpipekva > maxpipekva / 2)
   (void)pipespace_new(pipe, SMALL_PIPE_SIZE);
  else
   (void)pipespace_new(pipe, PIPE_SIZE);
 }

 pipe->pipe_ino = alloc_unr64(&pipeino_unr);
}
