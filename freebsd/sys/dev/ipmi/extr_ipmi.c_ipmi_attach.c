
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct ipmi_softc* ich_arg; int ich_func; } ;
struct ipmi_softc {TYPE_1__ ipmi_ich; int ipmi_irq; int * ipmi_intr; int * ipmi_irq_res; } ;
struct intr_config_hook {int dummy; } ;
typedef int device_t ;


 int ENOMEM ;
 int INTR_TYPE_MISC ;
 int bus_setup_intr (int ,int *,int ,int *,int *,struct ipmi_softc*,int *) ;
 int bzero (TYPE_1__*,int) ;
 scalar_t__ config_intrhook_establish (TYPE_1__*) ;
 struct ipmi_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int ipmi_attached ;
 int ipmi_startup ;

int
ipmi_attach(device_t dev)
{
 struct ipmi_softc *sc = device_get_softc(dev);
 int error;

 if (sc->ipmi_irq_res != ((void*)0) && sc->ipmi_intr != ((void*)0)) {
  error = bus_setup_intr(dev, sc->ipmi_irq_res, INTR_TYPE_MISC,
      ((void*)0), sc->ipmi_intr, sc, &sc->ipmi_irq);
  if (error) {
   device_printf(dev, "can't set up interrupt\n");
   return (error);
  }
 }

 bzero(&sc->ipmi_ich, sizeof(struct intr_config_hook));
 sc->ipmi_ich.ich_func = ipmi_startup;
 sc->ipmi_ich.ich_arg = sc;
 if (config_intrhook_establish(&sc->ipmi_ich) != 0) {
  device_printf(dev, "can't establish configuration hook\n");
  return (ENOMEM);
 }

 ipmi_attached = 1;
 return (0);
}
