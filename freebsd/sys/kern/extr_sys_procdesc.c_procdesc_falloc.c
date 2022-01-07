
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct filecaps {int dummy; } ;
struct file {int dummy; } ;


 int O_CLOEXEC ;
 int PD_CLOEXEC ;
 int falloc_caps (struct thread*,struct file**,int*,int,struct filecaps*) ;

int
procdesc_falloc(struct thread *td, struct file **resultfp, int *resultfd,
    int flags, struct filecaps *fcaps)
{
 int fflags;

 fflags = 0;
 if (flags & PD_CLOEXEC)
  fflags = O_CLOEXEC;

 return (falloc_caps(td, resultfp, resultfd, fflags, fcaps));
}
