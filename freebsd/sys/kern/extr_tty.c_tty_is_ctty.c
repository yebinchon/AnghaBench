
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {scalar_t__ t_session; } ;
struct proc {scalar_t__ p_session; int p_flag; } ;


 int MA_OWNED ;
 int P_CONTROLT ;
 int tty_lock_assert (struct tty*,int ) ;

__attribute__((used)) static __inline int
tty_is_ctty(struct tty *tp, struct proc *p)
{

 tty_lock_assert(tp, MA_OWNED);

 return (p->p_session == tp->t_session && p->p_flag & P_CONTROLT);
}
