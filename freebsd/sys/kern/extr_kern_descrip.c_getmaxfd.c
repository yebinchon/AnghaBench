
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;


 int RLIMIT_NOFILE ;
 scalar_t__ lim_cur (struct thread*,int ) ;
 int maxfilesperproc ;
 int min (int,int ) ;

__attribute__((used)) static int
getmaxfd(struct thread *td)
{

 return (min((int)lim_cur(td, RLIMIT_NOFILE), maxfilesperproc));
}
