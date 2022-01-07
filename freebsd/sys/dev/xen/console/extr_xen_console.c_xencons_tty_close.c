
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xencons_priv {int opened; } ;
struct tty {int dummy; } ;


 struct xencons_priv* tty_softc (struct tty*) ;

__attribute__((used)) static void
xencons_tty_close(struct tty *tp)
{
 struct xencons_priv *cons;

 cons = tty_softc(tp);

 cons->opened = 0;
}
