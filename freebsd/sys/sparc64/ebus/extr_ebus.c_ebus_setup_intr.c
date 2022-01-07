
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_long ;
struct resource {int dummy; } ;
struct ebus_softc {int sc_flags; scalar_t__ sc_ign; } ;
typedef int driver_intr_t ;
typedef int driver_filter_t ;
typedef int device_t ;
struct TYPE_2__ {int * iv_ic; } ;


 int EBUS_PCI ;
 int EINVAL ;
 scalar_t__ INTIGN (size_t) ;
 int bus_generic_setup_intr (int ,int ,struct resource*,int,int *,int *,void*,void**) ;
 struct ebus_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,size_t) ;
 TYPE_1__* intr_vectors ;
 size_t rman_get_start (struct resource*) ;

__attribute__((used)) static int
ebus_setup_intr(device_t dev, device_t child, struct resource *ires,
    int flags, driver_filter_t *filt, driver_intr_t *intr, void *arg,
    void **cookiep)
{

 struct ebus_softc *sc;
 u_long vec;

 sc = device_get_softc(dev);
 if ((sc->sc_flags & EBUS_PCI) == 0) {




  vec = rman_get_start(ires);
  if (INTIGN(vec) != sc->sc_ign) {
   device_printf(dev,
       "invalid interrupt vector 0x%lx\n", vec);
   return (EINVAL);
  }






  if (intr_vectors[vec].iv_ic == ((void*)0)) {
   device_printf(dev,
       "invalid interrupt controller for vector 0x%lx\n",
       vec);
   return (EINVAL);
  }
 }

 return (bus_generic_setup_intr(dev, child, ires, flags, filt, intr,
     arg, cookiep));
}
