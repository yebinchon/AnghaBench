
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xencons_priv {int callout; } ;
struct tty {int dummy; } ;


 int XC_POLLTIME ;
 int callout_reset (int *,int ,int ,struct tty*) ;
 int callout_stop (int *) ;
 struct xencons_priv* tty_softc (struct tty*) ;
 int xencons_timeout ;
 int xencons_tx (struct tty*) ;

__attribute__((used)) static void
xencons_tty_outwakeup(struct tty *tp)
{
 struct xencons_priv *cons;

 cons = tty_softc(tp);

 callout_stop(&cons->callout);

 if (!xencons_tx(tp))
  callout_reset(&cons->callout, XC_POLLTIME,
      xencons_timeout, tp);
}
