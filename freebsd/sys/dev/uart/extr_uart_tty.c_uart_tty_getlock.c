
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * tp; } ;
struct TYPE_4__ {TYPE_1__ u_tty; } ;
struct uart_softc {TYPE_2__ sc_u; } ;
struct mtx {int dummy; } ;


 struct mtx* tty_getlock (int *) ;

struct mtx *
uart_tty_getlock(struct uart_softc *sc)
{

 if (sc->sc_u.u_tty.tp != ((void*)0))
  return (tty_getlock(sc->sc_u.u_tty.tp));
 else
  return (((void*)0));
}
