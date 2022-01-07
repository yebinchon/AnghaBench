
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {int dummy; } ;
struct proc {int p_flag2; int p_flag; TYPE_1__* p_pptr; int p_pid; } ;
struct TYPE_2__ {int p_pid; } ;


 int KASSERT (int,char*) ;
 int P2_NOTRACE ;
 int P_TRACED ;

__attribute__((used)) static int
trace_status(struct thread *td, struct proc *p, int *data)
{

 if ((p->p_flag2 & P2_NOTRACE) != 0) {
  KASSERT((p->p_flag & P_TRACED) == 0,
      ("%d traced but tracing disabled", p->p_pid));
  *data = -1;
 } else if ((p->p_flag & P_TRACED) != 0) {
  *data = p->p_pptr->p_pid;
 } else {
  *data = 0;
 }
 return (0);
}
