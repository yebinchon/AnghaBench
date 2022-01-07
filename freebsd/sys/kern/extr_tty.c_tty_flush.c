
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int t_inq; int t_outq; int t_flags; } ;


 int FREAD ;
 int FWRITE ;
 int TF_HIWAT_OUT ;
 int TIOCPKT_FLUSHREAD ;
 int TIOCPKT_FLUSHWRITE ;
 int tty_gone (struct tty*) ;
 int tty_hiwat_in_unblock (struct tty*) ;
 int tty_wakeup (struct tty*,int) ;
 int ttydevsw_inwakeup (struct tty*) ;
 int ttydevsw_outwakeup (struct tty*) ;
 int ttydevsw_pktnotify (struct tty*,int ) ;
 int ttyinq_flush (int *) ;
 int ttyoutq_flush (int *) ;

void
tty_flush(struct tty *tp, int flags)
{

 if (flags & FWRITE) {
  tp->t_flags &= ~TF_HIWAT_OUT;
  ttyoutq_flush(&tp->t_outq);
  tty_wakeup(tp, FWRITE);
  if (!tty_gone(tp)) {
   ttydevsw_outwakeup(tp);
   ttydevsw_pktnotify(tp, TIOCPKT_FLUSHWRITE);
  }
 }
 if (flags & FREAD) {
  tty_hiwat_in_unblock(tp);
  ttyinq_flush(&tp->t_inq);
  tty_wakeup(tp, FREAD);
  if (!tty_gone(tp)) {
   ttydevsw_inwakeup(tp);
   ttydevsw_pktnotify(tp, TIOCPKT_FLUSHREAD);
  }
 }
}
