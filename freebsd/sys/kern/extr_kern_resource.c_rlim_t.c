
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct rlimit {int rlim_cur; } ;
typedef int rlim_t ;


 int lim_rlimit (struct thread*,int,struct rlimit*) ;

rlim_t
(lim_cur)(struct thread *td, int which)
{
 struct rlimit rl;

 lim_rlimit(td, which, &rl);
 return (rl.rlim_cur);
}
