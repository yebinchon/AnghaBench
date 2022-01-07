
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int et_min_period; } ;
struct xentimer_softc {TYPE_1__ et; } ;
typedef int device_t ;


 struct xentimer_softc* device_get_softc (int ) ;
 int xentimer_et_start (TYPE_1__*,int ,int ) ;

__attribute__((used)) static void
xentimer_percpu_resume(void *arg)
{
 device_t dev = (device_t) arg;
 struct xentimer_softc *sc = device_get_softc(dev);

 xentimer_et_start(&sc->et, sc->et.et_min_period, 0);
}
