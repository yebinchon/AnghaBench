
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lpc_uart_softc {scalar_t__ irq; } ;
struct TYPE_2__ {int pi_vmctx; } ;


 int assert (int) ;
 TYPE_1__* lpc_bridge ;
 int vm_isa_pulse_irq (int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static void
lpc_uart_intr_assert(void *arg)
{
 struct lpc_uart_softc *sc = arg;

 assert(sc->irq >= 0);

 vm_isa_pulse_irq(lpc_bridge->pi_vmctx, sc->irq, sc->irq);
}
