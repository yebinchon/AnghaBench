
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xencons_priv {int altbrk; int opened; } ;
struct tty {int dummy; } ;


 scalar_t__ kdb_active ;
 int kdb_alt_break (int,int *) ;
 int tty_lock (struct tty*) ;
 struct xencons_priv* tty_softc (struct tty*) ;
 int tty_unlock (struct tty*) ;
 int ttydisc_rint (struct tty*,int,int ) ;
 int ttydisc_rint_done (struct tty*) ;
 int xencons_getc (struct xencons_priv*) ;
 int xencons_rx (struct xencons_priv*) ;
 int xencons_tx_flush (struct xencons_priv*,int ) ;

__attribute__((used)) static void
xencons_intr(void *arg)
{
 struct tty *tp;
 struct xencons_priv *cons;
 int ret;

 tp = arg;
 cons = tty_softc(tp);




 if (kdb_active)
  return;




 if (!cons->opened)
  return;

 xencons_rx(cons);

 tty_lock(tp);
 while ((ret = xencons_getc(cons)) != -1) {



  ttydisc_rint(tp, ret, 0);
 }
 ttydisc_rint_done(tp);
 tty_unlock(tp);


 xencons_tx_flush(cons, 0);
}
