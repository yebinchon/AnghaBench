
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int t_revokecnt; int t_mtx; } ;
struct cv {int dummy; } ;


 int ENXIO ;
 int ERESTART ;
 int MA_NOTRECURSED ;
 int MA_OWNED ;
 int MPASS (int) ;
 int cv_timedwait_sig (struct cv*,int ,int) ;
 scalar_t__ tty_gone (struct tty*) ;
 int tty_lock_assert (struct tty*,int) ;

int
tty_timedwait(struct tty *tp, struct cv *cv, int hz)
{
 int error;
 int revokecnt = tp->t_revokecnt;

 tty_lock_assert(tp, MA_OWNED|MA_NOTRECURSED);
 MPASS(!tty_gone(tp));

 error = cv_timedwait_sig(cv, tp->t_mtx, hz);


 if (tty_gone(tp))
  return (ENXIO);


 if (tp->t_revokecnt != revokecnt)
  return (ERESTART);

 return (error);
}
