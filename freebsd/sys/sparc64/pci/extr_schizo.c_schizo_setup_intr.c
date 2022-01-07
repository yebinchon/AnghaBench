
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_long ;
struct schizo_softc {scalar_t__ sc_ign; } ;
struct schizo_icarg {struct schizo_softc* sica_sc; } ;
struct resource {int dummy; } ;
typedef int driver_intr_t ;
typedef int driver_filter_t ;
typedef int device_t ;
struct TYPE_2__ {int * iv_ic; scalar_t__ iv_icarg; } ;


 int EINVAL ;
 scalar_t__ INTIGN (size_t) ;
 int INTINO (size_t) ;
 scalar_t__ bootverbose ;
 int bus_generic_setup_intr (int ,int ,struct resource*,int,int *,int *,void*,void**) ;
 struct schizo_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,size_t,...) ;
 TYPE_1__* intr_vectors ;
 size_t rman_get_start (struct resource*) ;
 int schizo_ic ;
 int schizo_intr_register (struct schizo_softc*,int ) ;

__attribute__((used)) static int
schizo_setup_intr(device_t dev, device_t child, struct resource *ires,
    int flags, driver_filter_t *filt, driver_intr_t *intr, void *arg,
    void **cookiep)
{
 struct schizo_softc *sc;
 u_long vec;
 int error;

 sc = device_get_softc(dev);



 vec = rman_get_start(ires);
 if (INTIGN(vec) != sc->sc_ign) {
  device_printf(dev, "invalid interrupt vector 0x%lx\n", vec);
  return (EINVAL);
 }

 if (intr_vectors[vec].iv_ic == &schizo_ic) {




  sc = ((struct schizo_icarg *)intr_vectors[vec].iv_icarg)->
      sica_sc;
 } else if (intr_vectors[vec].iv_ic == ((void*)0)) {




  error = schizo_intr_register(sc, INTINO(vec));
  if (error != 0) {
   device_printf(dev, "could not register interrupt "
       "controller for vector 0x%lx (%d)\n", vec, error);
   return (error);
  }
  if (bootverbose)
   device_printf(dev, "belatedly registered as "
       "interrupt controller for vector 0x%lx\n", vec);
 } else {
  device_printf(dev,
      "invalid interrupt controller for vector 0x%lx\n", vec);
  return (EINVAL);
 }
 return (bus_generic_setup_intr(dev, child, ires, flags, filt, intr,
     arg, cookiep));
}
