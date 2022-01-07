
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_softc {int sc_pps_mode; int sc_dev; } ;





 int UART_PPS_INVERT_PULSE ;
 int UART_PPS_NARROW_PULSE ;
 int UART_PPS_SIGNAL_MASK ;
 int device_printf (int ,char*) ;
 int printf (char*) ;

__attribute__((used)) static void
uart_pps_print_mode(struct uart_softc *sc)
{

 device_printf(sc->sc_dev, "PPS capture mode: ");
 switch(sc->sc_pps_mode & UART_PPS_SIGNAL_MASK) {
 case 128:
  printf("disabled");
  break;
 case 130:
  printf("CTS");
  break;
 case 129:
  printf("DCD");
  break;
 default:
  printf("invalid");
  break;
 }
 if (sc->sc_pps_mode & UART_PPS_INVERT_PULSE)
  printf("-Inverted");
 if (sc->sc_pps_mode & UART_PPS_NARROW_PULSE)
  printf("-NarrowPulse");
 printf("\n");
}
