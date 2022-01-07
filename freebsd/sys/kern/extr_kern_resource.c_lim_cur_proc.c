
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rlimit {int rlim_cur; } ;
struct proc {int dummy; } ;
typedef int rlim_t ;


 int lim_rlimit_proc (struct proc*,int,struct rlimit*) ;

rlim_t
lim_cur_proc(struct proc *p, int which)
{
 struct rlimit rl;

 lim_rlimit_proc(p, which, &rl);
 return (rl.rlim_cur);
}
