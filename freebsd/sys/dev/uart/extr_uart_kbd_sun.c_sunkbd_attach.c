
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct uart_softc {int sc_opened; int sc_softih; int * sc_sysdev; int sc_dev; } ;
struct TYPE_3__ {int sc_kbd; struct uart_softc* sc_uart; int * sc_sysdev; } ;


 int INTR_TYPE_TTY ;
 int KBD_INIT_DONE (int *) ;
 int SWI_TTY ;
 int device_printf (int ,char*) ;
 int kbd_attach (int *) ;
 int sunkbd_enable (int *) ;
 TYPE_1__ sunkbd_softc ;
 int sunkbd_uart_intr ;
 int swi_add (int *,int ,int ,TYPE_1__*,int ,int ,int *) ;
 int tty_intr_event ;
 int uart_driver_name ;

__attribute__((used)) static int
sunkbd_attach(struct uart_softc *sc)
{





 if (sunkbd_softc.sc_sysdev == ((void*)0)) {
  device_printf(sc->sc_dev, "keyboard not present\n");
  return (0);
 }

 if (sc->sc_sysdev != ((void*)0)) {
  sunkbd_softc.sc_uart = sc;




  sunkbd_enable(&sunkbd_softc.sc_kbd);

  swi_add(&tty_intr_event, uart_driver_name, sunkbd_uart_intr,
      &sunkbd_softc, SWI_TTY, INTR_TYPE_TTY, &sc->sc_softih);

  sc->sc_opened = 1;
  KBD_INIT_DONE(&sunkbd_softc.sc_kbd);
 }

 return (0);
}
