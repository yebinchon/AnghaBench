
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {scalar_t__ t_sessioncnt; struct pgrp* t_pgrp; } ;
struct pgrp {int dummy; } ;


 int MA_OWNED ;
 int MPASS (int) ;
 int tty_lock_assert (struct tty*,int ) ;
 int tty_unlock (struct tty*) ;

void
tty_rel_pgrp(struct tty *tp, struct pgrp *pg)
{

 MPASS(tp->t_sessioncnt > 0);
 tty_lock_assert(tp, MA_OWNED);

 if (tp->t_pgrp == pg)
  tp->t_pgrp = ((void*)0);

 tty_unlock(tp);
}
