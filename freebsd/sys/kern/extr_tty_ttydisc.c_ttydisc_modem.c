
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int t_flags; int t_dcdwait; } ;


 int CLOCAL ;
 scalar_t__ CMP_FLAG (int ,int ) ;
 int FREAD ;
 int FWRITE ;
 int MA_OWNED ;
 int SIGHUP ;
 int TF_ZOMBIE ;
 int c ;
 int cv_broadcast (int *) ;
 int tty_flush (struct tty*,int) ;
 int tty_lock_assert (struct tty*,int ) ;
 int tty_opened (struct tty*) ;
 int tty_signal_sessleader (struct tty*,int ) ;

void
ttydisc_modem(struct tty *tp, int open)
{

 tty_lock_assert(tp, MA_OWNED);

 if (open)
  cv_broadcast(&tp->t_dcdwait);







 if (!tty_opened(tp) || CMP_FLAG(c, CLOCAL))
  return;

 if (open == 0) {



  tp->t_flags |= TF_ZOMBIE;

  tty_signal_sessleader(tp, SIGHUP);
  tty_flush(tp, FREAD|FWRITE);
 } else {





 }
}
