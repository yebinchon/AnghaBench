
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int et_arg; int (* et_event_cb ) (TYPE_1__*,int ) ;scalar_t__ et_active; } ;
struct riscv_timer_softc {TYPE_1__ et; } ;


 int FILTER_HANDLED ;
 int SIP_STIP ;
 int csr_clear (int ,int ) ;
 int sip ;
 int stub1 (TYPE_1__*,int ) ;

__attribute__((used)) static int
riscv_timer_intr(void *arg)
{
 struct riscv_timer_softc *sc;

 sc = (struct riscv_timer_softc *)arg;

 csr_clear(sip, SIP_STIP);

 if (sc->et.et_active)
  sc->et.et_event_cb(&sc->et, sc->et.et_arg);

 return (FILTER_HANDLED);
}
