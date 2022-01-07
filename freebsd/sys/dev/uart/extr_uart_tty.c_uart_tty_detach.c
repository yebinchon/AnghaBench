
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct tty* tp; } ;
struct TYPE_4__ {TYPE_1__ u_tty; } ;
struct uart_softc {int sc_softih; TYPE_2__ sc_u; } ;
struct tty {int dummy; } ;


 int swi_remove (int ) ;
 int tty_lock (struct tty*) ;
 int tty_rel_gone (struct tty*) ;

int
uart_tty_detach(struct uart_softc *sc)
{
 struct tty *tp;

 tp = sc->sc_u.u_tty.tp;

 tty_lock(tp);
 swi_remove(sc->sc_softih);
 tty_rel_gone(tp);

 return (0);
}
