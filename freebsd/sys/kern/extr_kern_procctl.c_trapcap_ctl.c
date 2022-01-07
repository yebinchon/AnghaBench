
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct proc {int p_flag2; } ;


 int EINVAL ;
 int MA_OWNED ;
 int P2_TRAPCAP ;
 int PROC_LOCK_ASSERT (struct proc*,int ) ;



__attribute__((used)) static int
trapcap_ctl(struct thread *td, struct proc *p, int state)
{

 PROC_LOCK_ASSERT(p, MA_OWNED);

 switch (state) {
 case 128:
  p->p_flag2 |= P2_TRAPCAP;
  break;
 case 129:
  p->p_flag2 &= ~P2_TRAPCAP;
  break;
 default:
  return (EINVAL);
 }
 return (0);
}
