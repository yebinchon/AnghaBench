
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {struct proc* td_proc; } ;
struct proc {int p_flag; scalar_t__ p_traceflag; int p_flag2; } ;


 int EBUSY ;
 int EINVAL ;
 int EPERM ;
 int KASSERT (int,char*) ;
 int MA_OWNED ;
 int P2_NOTRACE ;
 int P2_NOTRACE_EXEC ;
 int PROC_LOCK_ASSERT (struct proc*,int ) ;



 int P_TRACED ;

__attribute__((used)) static int
trace_ctl(struct thread *td, struct proc *p, int state)
{

 PROC_LOCK_ASSERT(p, MA_OWNED);






 if ((p->p_flag & P_TRACED) != 0 || p->p_traceflag != 0)
  return (EBUSY);

 switch (state) {
 case 128:
  if (td->td_proc != p)
   return (EPERM);
  p->p_flag2 &= ~(P2_NOTRACE | P2_NOTRACE_EXEC);
  break;
 case 129:
  p->p_flag2 |= P2_NOTRACE_EXEC | P2_NOTRACE;
  break;
 case 130:
  if ((p->p_flag2 & P2_NOTRACE_EXEC) != 0) {
   KASSERT((p->p_flag2 & P2_NOTRACE) != 0,
       ("dandling P2_NOTRACE_EXEC"));
   if (td->td_proc != p)
    return (EPERM);
   p->p_flag2 &= ~P2_NOTRACE_EXEC;
  } else {
   p->p_flag2 |= P2_NOTRACE;
  }
  break;
 default:
  return (EINVAL);
 }
 return (0);
}
