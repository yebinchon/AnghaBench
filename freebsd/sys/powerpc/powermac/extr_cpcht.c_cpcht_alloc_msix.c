
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpcht_softc {int htirq_mtx; TYPE_1__* htirq_map; } ;
typedef int device_t ;
struct TYPE_2__ {scalar_t__ irq_type; } ;


 int ENXIO ;
 scalar_t__ IRQ_MSI ;
 scalar_t__ IRQ_NONE ;
 int MAP_IRQ (scalar_t__,int) ;
 scalar_t__ cpcht_msipic ;
 struct cpcht_softc* device_get_softc (int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static int
cpcht_alloc_msix(device_t dev, device_t child, int *irq)
{
 struct cpcht_softc *sc;
 int i;

 sc = device_get_softc(dev);


 if (cpcht_msipic == 0)
  return (ENXIO);

 mtx_lock(&sc->htirq_mtx);
 for (i = 8; i < 124; i++) {
  if (sc->htirq_map[i].irq_type == IRQ_NONE) {
   sc->htirq_map[i].irq_type = IRQ_MSI;
   *irq = MAP_IRQ(cpcht_msipic, i);

   mtx_unlock(&sc->htirq_mtx);
   return (0);
  }
 }
 mtx_unlock(&sc->htirq_mtx);

 return (ENXIO);
}
