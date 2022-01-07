
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ rclk; } ;
struct uart_softc {int sc_hwmtx; TYPE_1__ sc_bas; } ;


 scalar_t__ DEF_CLK ;
 int KASSERT (int,char*) ;
 int msm_uart_param (TYPE_1__*,int,int,int,int) ;
 int uart_lock (int ) ;
 int uart_unlock (int ) ;

__attribute__((used)) static int
msm_bus_param(struct uart_softc *sc, int baudrate, int databits,
    int stopbits, int parity)
{
 int error;

 if (sc->sc_bas.rclk == 0)
  sc->sc_bas.rclk = DEF_CLK;

 KASSERT(sc->sc_bas.rclk != 0, ("msm_init: Invalid rclk"));

 uart_lock(sc->sc_hwmtx);
 error = msm_uart_param(&sc->sc_bas, baudrate, databits, stopbits,
     parity);
 uart_unlock(sc->sc_hwmtx);

 return (error);
}
