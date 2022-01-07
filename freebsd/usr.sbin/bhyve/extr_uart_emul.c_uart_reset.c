
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct uart_softc {int dll; int dlh; int mcr; int msr; } ;


 int DEFAULT_BAUD ;
 int DEFAULT_RCLK ;
 int modem_status (int ) ;
 int rxfifo_reset (struct uart_softc*,int) ;

__attribute__((used)) static void
uart_reset(struct uart_softc *sc)
{
 uint16_t divisor;

 divisor = DEFAULT_RCLK / DEFAULT_BAUD / 16;
 sc->dll = divisor;
 sc->dlh = divisor >> 16;
 sc->msr = modem_status(sc->mcr);

 rxfifo_reset(sc, 1);
}
