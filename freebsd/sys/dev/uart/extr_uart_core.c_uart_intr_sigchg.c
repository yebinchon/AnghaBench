
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mode; } ;
struct TYPE_4__ {TYPE_1__ ppsparam; } ;
struct uart_softc {int sc_ttypend; scalar_t__ sc_opened; TYPE_2__ sc_pps; } ;


 int PPS_CAPTUREBOTH ;
 int SER_INT_SIGCHG ;
 int SER_INT_SIGMASK ;
 int SER_MASK_STATE ;
 int UART_GETSIG (struct uart_softc*) ;
 int atomic_cmpset_32 (int*,int,int) ;
 int uart_pps_process (struct uart_softc*,int) ;
 int uart_sched_softih (struct uart_softc*,int ) ;

__attribute__((used)) static __inline int
uart_intr_sigchg(void *arg)
{
 struct uart_softc *sc = arg;
 int new, old, sig;

 sig = UART_GETSIG(sc);





 if (sc->sc_pps.ppsparam.mode & PPS_CAPTUREBOTH) {
  uart_pps_process(sc, sig);
 }
 do {
  old = sc->sc_ttypend;
  new = old & ~SER_MASK_STATE;
  new |= sig & SER_INT_SIGMASK;
 } while (!atomic_cmpset_32(&sc->sc_ttypend, old, new));

 if (sc->sc_opened)
  uart_sched_softih(sc, SER_INT_SIGCHG);
 return (1);
}
