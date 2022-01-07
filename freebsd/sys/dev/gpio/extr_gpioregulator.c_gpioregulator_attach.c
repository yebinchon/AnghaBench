
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct regnode {int dummy; } ;
struct TYPE_6__ {int id; int ofw_node; } ;
struct TYPE_4__ {TYPE_3__ reg_init_def; } ;
struct gpioregulator_softc {TYPE_1__ init_def; TYPE_2__* reg_sc; void* dev; } ;
typedef int phandle_t ;
typedef void* device_t ;
struct TYPE_5__ {TYPE_1__* def; int param; void* base_dev; struct regnode* regnode; } ;


 int ENXIO ;
 struct gpioregulator_softc* device_get_softc (void*) ;
 int device_printf (void*,char*) ;
 int gpioregulator_parse_fdt (struct gpioregulator_softc*) ;
 int gpioregulator_regnode_class ;
 int ofw_bus_get_node (void*) ;
 struct regnode* regnode_create (void*,int *,TYPE_3__*) ;
 TYPE_2__* regnode_get_softc (struct regnode*) ;
 int regnode_get_stdparam (struct regnode*) ;
 int regnode_register (struct regnode*) ;

__attribute__((used)) static int
gpioregulator_attach(device_t dev)
{
 struct gpioregulator_softc *sc;
 struct regnode *regnode;
 phandle_t node;
 int error;

 sc = device_get_softc(dev);
 sc->dev = dev;
 node = ofw_bus_get_node(dev);

 error = gpioregulator_parse_fdt(sc);
 if (error != 0) {
  device_printf(dev, "cannot parse parameters\n");
  return (ENXIO);
 }
 sc->init_def.reg_init_def.id = 1;
 sc->init_def.reg_init_def.ofw_node = node;

 regnode = regnode_create(dev, &gpioregulator_regnode_class,
     &sc->init_def.reg_init_def);
 if (regnode == ((void*)0)) {
  device_printf(dev, "cannot create regulator\n");
  return (ENXIO);
 }

 sc->reg_sc = regnode_get_softc(regnode);
 sc->reg_sc->regnode = regnode;
 sc->reg_sc->base_dev = dev;
 sc->reg_sc->param = regnode_get_stdparam(regnode);
 sc->reg_sc->def = &sc->init_def;

 regnode_register(regnode);

 return (0);
}
