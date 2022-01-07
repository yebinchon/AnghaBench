
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpcht_softc {int htirq_mtx; TYPE_1__* htirq_map; } ;
typedef int device_t ;
struct TYPE_2__ {int irq_type; } ;


 int IRQ_NONE ;
 struct cpcht_softc* device_get_softc (int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static int
cpcht_release_msix(device_t dev, device_t child, int irq)
{
 struct cpcht_softc *sc;

 sc = device_get_softc(dev);

 mtx_lock(&sc->htirq_mtx);
 sc->htirq_map[irq & 0xff].irq_type = IRQ_NONE;
 mtx_unlock(&sc->htirq_mtx);

 return (0);
}
