
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int et_arg; int (* et_event_cb ) (TYPE_1__*,int ) ;scalar_t__ et_active; } ;
struct xentimer_softc {TYPE_1__ et; } ;
struct xentimer_pcpu_data {scalar_t__ timer; int last_processed; } ;


 int DPCPU_GET (int ) ;
 struct xentimer_pcpu_data* DPCPU_PTR (int ) ;
 int FILTER_HANDLED ;
 int stub1 (TYPE_1__*,int ) ;
 int vcpu_info ;
 int xen_fetch_vcpu_time (int ) ;
 int xentimer_pcpu ;

__attribute__((used)) static int
xentimer_intr(void *arg)
{
 struct xentimer_softc *sc = (struct xentimer_softc *)arg;
 struct xentimer_pcpu_data *pcpu = DPCPU_PTR(xentimer_pcpu);

 pcpu->last_processed = xen_fetch_vcpu_time(DPCPU_GET(vcpu_info));
 if (pcpu->timer != 0 && sc->et.et_active)
  sc->et.et_event_cb(&sc->et, sc->et.et_arg);

 return (FILTER_HANDLED);
}
