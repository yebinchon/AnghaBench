
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {scalar_t__ t_sessioncnt; int * t_pgrp; struct session* t_session; } ;
struct session {int dummy; } ;


 int MPASS (int) ;
 int tty_rel_free (struct tty*) ;

void
tty_rel_sess(struct tty *tp, struct session *sess)
{

 MPASS(tp->t_sessioncnt > 0);


 if (tp->t_session == sess) {
  tp->t_session = ((void*)0);
  MPASS(tp->t_pgrp == ((void*)0));
 }
 tp->t_sessioncnt--;
 tty_rel_free(tp);
}
