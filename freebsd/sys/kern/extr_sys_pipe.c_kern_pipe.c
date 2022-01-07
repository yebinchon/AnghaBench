
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct pipe {int dummy; } ;
struct pipepair {struct pipe pp_wpipe; struct pipe pp_rpipe; } ;
struct filecaps {int dummy; } ;
struct file {int dummy; } ;


 int DTYPE_PIPE ;
 int FNONBLOCK ;
 int FREAD ;
 int FWRITE ;
 int O_NONBLOCK ;
 int falloc_caps (struct thread*,struct file**,int*,int,struct filecaps*) ;
 int fdclose (struct thread*,struct file*,int) ;
 int fdrop (struct file*,struct thread*) ;
 int finit (struct file*,int,int ,struct pipe*,int *) ;
 int pipe_paircreate (struct thread*,struct pipepair**) ;
 int pipeclose (struct pipe*) ;
 int pipeops ;

int
kern_pipe(struct thread *td, int fildes[2], int flags, struct filecaps *fcaps1,
    struct filecaps *fcaps2)
{
 struct file *rf, *wf;
 struct pipe *rpipe, *wpipe;
 struct pipepair *pp;
 int fd, fflags, error;

 pipe_paircreate(td, &pp);
 rpipe = &pp->pp_rpipe;
 wpipe = &pp->pp_wpipe;
 error = falloc_caps(td, &rf, &fd, flags, fcaps1);
 if (error) {
  pipeclose(rpipe);
  pipeclose(wpipe);
  return (error);
 }

 fildes[0] = fd;

 fflags = FREAD | FWRITE;
 if ((flags & O_NONBLOCK) != 0)
  fflags |= FNONBLOCK;







 finit(rf, fflags, DTYPE_PIPE, rpipe, &pipeops);
 error = falloc_caps(td, &wf, &fd, flags, fcaps2);
 if (error) {
  fdclose(td, rf, fildes[0]);
  fdrop(rf, td);

  pipeclose(wpipe);
  return (error);
 }

 finit(wf, fflags, DTYPE_PIPE, wpipe, &pipeops);
 fdrop(wf, td);
 fildes[1] = fd;
 fdrop(rf, td);

 return (0);
}
