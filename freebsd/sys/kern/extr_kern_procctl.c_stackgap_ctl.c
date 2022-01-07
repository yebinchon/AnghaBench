
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct proc {int p_flag2; } ;


 int EINVAL ;
 int MA_OWNED ;
 int P2_STKGAP_DISABLE ;
 int P2_STKGAP_DISABLE_EXEC ;
 int PROC_LOCK_ASSERT (struct proc*,int ) ;





__attribute__((used)) static int
stackgap_ctl(struct thread *td, struct proc *p, int state)
{
 PROC_LOCK_ASSERT(p, MA_OWNED);

 if ((state & ~(129 | 131 |
     128 | 130)) != 0)
  return (EINVAL);
 switch (state & (129 | 131)) {
 case 129:
  if ((p->p_flag2 & P2_STKGAP_DISABLE) != 0)
   return (EINVAL);
  break;
 case 131:
  p->p_flag2 |= P2_STKGAP_DISABLE;
  break;
 case 0:
  break;
 default:
  return (EINVAL);
 }
 switch (state & (128 |
     130)) {
 case 128:
  p->p_flag2 &= ~P2_STKGAP_DISABLE_EXEC;
  break;
 case 130:
  p->p_flag2 |= P2_STKGAP_DISABLE_EXEC;
  break;
 case 0:
  break;
 default:
  return (EINVAL);
 }
 return (0);
}
