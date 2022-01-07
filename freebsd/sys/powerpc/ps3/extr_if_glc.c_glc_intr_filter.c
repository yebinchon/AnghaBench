
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct glc_softc {int * sc_hwirq_status; int sc_interrupt_status; } ;


 int FILTER_SCHEDULE_THREAD ;
 int atomic_set_64 (int *,int ) ;
 int powerpc_sync () ;

__attribute__((used)) static int
glc_intr_filter(void *xsc)
{
 struct glc_softc *sc = xsc;

 powerpc_sync();
 atomic_set_64(&sc->sc_interrupt_status, *sc->sc_hwirq_status);
 return (FILTER_SCHEDULE_THREAD);
}
