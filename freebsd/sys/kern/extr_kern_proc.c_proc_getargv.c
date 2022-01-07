
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct sbuf {int dummy; } ;
struct proc {int dummy; } ;


 int PROC_ARG ;
 int curthread ;
 int get_ps_strings (int ,struct proc*,struct sbuf*,int ) ;

int
proc_getargv(struct thread *td, struct proc *p, struct sbuf *sb)
{

 return (get_ps_strings(curthread, p, sb, PROC_ARG));
}
