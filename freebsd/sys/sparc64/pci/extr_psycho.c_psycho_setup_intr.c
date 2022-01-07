
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_long ;
struct resource {int dummy; } ;
struct psycho_softc {scalar_t__ sc_ign; } ;
typedef int driver_intr_t ;
typedef int driver_filter_t ;
typedef int device_t ;
struct TYPE_2__ {int * iv_ic; } ;


 int EINVAL ;
 scalar_t__ INTIGN (size_t) ;
 int bus_generic_setup_intr (int ,int ,struct resource*,int,int *,int *,void*,void**) ;
 struct psycho_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,size_t) ;
 TYPE_1__* intr_vectors ;
 int psycho_ic ;
 size_t rman_get_start (struct resource*) ;

__attribute__((used)) static int
psycho_setup_intr(device_t dev, device_t child, struct resource *ires,
    int flags, driver_filter_t *filt, driver_intr_t *intr, void *arg,
    void **cookiep)
{
 struct psycho_softc *sc;
 u_long vec;

 sc = device_get_softc(dev);




 vec = rman_get_start(ires);
 if (INTIGN(vec) != sc->sc_ign ||
     intr_vectors[vec].iv_ic != &psycho_ic) {
  device_printf(dev, "invalid interrupt vector 0x%lx\n", vec);
  return (EINVAL);
 }
 return (bus_generic_setup_intr(dev, child, ires, flags, filt, intr,
     arg, cookiep));
}
