
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct tty* tp; } ;
struct TYPE_5__ {TYPE_1__ u_tty; } ;
struct uart_softc {int sc_softih; TYPE_3__* sc_sysdev; int sc_dev; TYPE_2__ sc_u; } ;
struct tty {int dummy; } ;
struct consdev {int cn_name; } ;
struct TYPE_6__ {scalar_t__ type; int baudrate; scalar_t__ cookie; } ;


 int INTR_TYPE_TTY ;
 int SWI_TTY ;
 scalar_t__ UART_DEV_CONSOLE ;
 int device_get_unit (int ) ;
 int sprintf (int ,char*,int) ;
 int swi_add (int *,int ,int ,struct uart_softc*,int ,int ,int *) ;
 struct tty* tty_alloc (int *,struct uart_softc*) ;
 int tty_init_console (struct tty*,int ) ;
 int tty_intr_event ;
 int tty_makedev (struct tty*,int *,char*,int) ;
 int uart_driver_name ;
 int uart_tty_class ;
 int uart_tty_intr ;

int
uart_tty_attach(struct uart_softc *sc)
{
 struct tty *tp;
 int unit;

 sc->sc_u.u_tty.tp = tp = tty_alloc(&uart_tty_class, sc);

 unit = device_get_unit(sc->sc_dev);

 if (sc->sc_sysdev != ((void*)0) && sc->sc_sysdev->type == UART_DEV_CONSOLE) {
  sprintf(((struct consdev *)sc->sc_sysdev->cookie)->cn_name,
      "ttyu%r", unit);
  tty_init_console(tp, sc->sc_sysdev->baudrate);
 }

 swi_add(&tty_intr_event, uart_driver_name, uart_tty_intr, sc, SWI_TTY,
     INTR_TYPE_TTY, &sc->sc_softih);

 tty_makedev(tp, ((void*)0), "u%r", unit);

 return (0);
}
