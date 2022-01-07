
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xencons_priv {int callout; } ;
struct tty {int dummy; } ;


 int XC_POLLTIME ;
 int callout_reset (int *,int ,void (*) (void*),struct tty*) ;
 struct xencons_priv* tty_softc (struct tty*) ;
 int xencons_tx (struct tty*) ;

__attribute__((used)) static void
xencons_timeout(void *v)
{
 struct tty *tp;
 struct xencons_priv *cons;

 tp = v;
 cons = tty_softc(tp);

 if (!xencons_tx(tp))
  callout_reset(&cons->callout, XC_POLLTIME,
      xencons_timeout, tp);
}
