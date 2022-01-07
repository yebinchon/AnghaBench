
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct uart_bas {int dummy; } ;
struct uart_softc {int sc_hwsig; int sc_hwmtx; struct uart_bas sc_bas; } ;
struct ar933x_softc {int mcr; } ;


 int MCR_DTR ;
 int MCR_RTS ;
 int REG_MCR ;
 int SER_DDTR ;
 int SER_DRTS ;
 int SER_DTR ;
 int SER_RTS ;
 int SIGCHG (int,int,int,int) ;
 int atomic_cmpset_32 (int*,int,int) ;
 int uart_barrier (struct uart_bas*) ;
 int uart_lock (int ) ;
 int uart_setreg (struct uart_bas*,int ,int) ;
 int uart_unlock (int ) ;

__attribute__((used)) static int
ar933x_bus_setsig(struct uart_softc *sc, int sig)
{
 return (0);
}
