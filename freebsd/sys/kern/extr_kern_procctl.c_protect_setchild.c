
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct proc {int p_flag; int p_flag2; } ;


 int MA_OWNED ;
 int P2_INHERIT_PROTECTED ;
 int PPROT_INHERIT ;
 int PPROT_SET ;
 int PROC_LOCK_ASSERT (struct proc*,int ) ;
 int P_PROTECTED ;
 int P_SYSTEM ;
 scalar_t__ p_cansched (struct thread*,struct proc*) ;

__attribute__((used)) static int
protect_setchild(struct thread *td, struct proc *p, int flags)
{

 PROC_LOCK_ASSERT(p, MA_OWNED);
 if (p->p_flag & P_SYSTEM || p_cansched(td, p) != 0)
  return (0);
 if (flags & PPROT_SET) {
  p->p_flag |= P_PROTECTED;
  if (flags & PPROT_INHERIT)
   p->p_flag2 |= P2_INHERIT_PROTECTED;
 } else {
  p->p_flag &= ~P_PROTECTED;
  p->p_flag2 &= ~P2_INHERIT_PROTECTED;
 }
 return (1);
}
