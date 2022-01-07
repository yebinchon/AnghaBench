
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xencons_priv {int dummy; } ;
struct tty {int dummy; } ;


 int MA_OWNED ;
 int tty_lock_assert (struct tty*,int ) ;
 struct xencons_priv* tty_softc (struct tty*) ;
 int ttydisc_getc (struct tty*,char*,int) ;
 int xencons_putc (struct xencons_priv*,char,int) ;
 scalar_t__ xencons_tx_full (struct xencons_priv*) ;

__attribute__((used)) static bool
xencons_tx(struct tty *tp)
{
 bool cons_full;
 char c;
 struct xencons_priv *cons;

 cons = tty_softc(tp);

 tty_lock_assert(tp, MA_OWNED);





 if (xencons_tx_full(cons))
  return (0);

 cons_full = 0;
 while (!cons_full && ttydisc_getc(tp, &c, 1) == 1)
  cons_full = xencons_putc(cons, c, 0);

 return (!cons_full);
}
