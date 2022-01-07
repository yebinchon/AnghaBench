
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ich_arg; int ich_func; } ;
struct syr827_softc {int * reg; TYPE_1__ intr_hook; int addr; } ;
typedef int phandle_t ;
typedef int device_t ;


 int ENOMEM ;
 int ENXIO ;
 scalar_t__ config_intrhook_establish (TYPE_1__*) ;
 struct syr827_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int iicbus_get_addr (int ) ;
 int ofw_bus_get_node (int ) ;
 int * syr827_reg_attach (int ,int ) ;
 int syr827_start ;

__attribute__((used)) static int
syr827_attach(device_t dev)
{
 struct syr827_softc *sc;
 phandle_t node;

 sc = device_get_softc(dev);
 node = ofw_bus_get_node(dev);

 sc->addr = iicbus_get_addr(dev);

 sc->intr_hook.ich_func = syr827_start;
 sc->intr_hook.ich_arg = dev;

 if (config_intrhook_establish(&sc->intr_hook) != 0)
  return (ENOMEM);

 sc->reg = syr827_reg_attach(dev, node);
 if (sc->reg == ((void*)0)) {
  device_printf(dev, "cannot attach regulator\n");
  return (ENXIO);
 }

 return (0);
}
