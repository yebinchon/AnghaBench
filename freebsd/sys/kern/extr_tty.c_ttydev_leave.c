
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int si_note; } ;
struct TYPE_3__ {int si_note; } ;
struct tty {int t_flags; int t_dcdwait; TYPE_2__ t_outpoll; TYPE_1__ t_inpoll; scalar_t__ t_outlow; int t_outq; scalar_t__ t_inlow; int t_inq; } ;


 int MA_OWNED ;
 int TF_OPENCLOSE ;
 struct tty* constty ;
 int constty_clear () ;
 int cv_broadcast (int *) ;
 int knlist_clear (int *,int) ;
 int tty_drain (struct tty*,int) ;
 int tty_gone (struct tty*) ;
 int tty_lock_assert (struct tty*,int ) ;
 scalar_t__ tty_opened (struct tty*) ;
 int tty_rel_free (struct tty*) ;
 int tty_unlock (struct tty*) ;
 int ttydevsw_close (struct tty*) ;
 int ttydisc_close (struct tty*) ;
 int ttyinq_free (int *) ;
 int ttyoutq_free (int *) ;

__attribute__((used)) static void
ttydev_leave(struct tty *tp)
{

 tty_lock_assert(tp, MA_OWNED);

 if (tty_opened(tp) || tp->t_flags & TF_OPENCLOSE) {

  tty_unlock(tp);
  return;
 }

 tp->t_flags |= TF_OPENCLOSE;


 if (constty == tp)
  constty_clear();


 if (!tty_gone(tp))
  tty_drain(tp, 1);

 ttydisc_close(tp);


 ttyinq_free(&tp->t_inq);
 tp->t_inlow = 0;
 ttyoutq_free(&tp->t_outq);
 tp->t_outlow = 0;

 knlist_clear(&tp->t_inpoll.si_note, 1);
 knlist_clear(&tp->t_outpoll.si_note, 1);

 if (!tty_gone(tp))
  ttydevsw_close(tp);

 tp->t_flags &= ~TF_OPENCLOSE;
 cv_broadcast(&tp->t_dcdwait);
 tty_rel_free(tp);
}
