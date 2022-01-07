
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {TYPE_1__* td_frame; } ;
struct fpreg {int dummy; } ;
struct TYPE_2__ {int f0; } ;


 struct thread* PCPU_GET (int ) ;
 int PCPU_SET (int ,struct thread*) ;
 int fpcurthread ;
 int memcpy (int *,struct fpreg*,int) ;

int
set_fpregs(struct thread *td, struct fpreg *fpregs)
{
 if (PCPU_GET(fpcurthread) == td)
  PCPU_SET(fpcurthread, (struct thread *)0);
 memcpy(&td->td_frame->f0, fpregs, sizeof(struct fpreg));
 return 0;
}
