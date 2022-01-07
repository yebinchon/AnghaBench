
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct regnode_fixed_sc {TYPE_1__* param; TYPE_2__* gpio_entry; int gpio_open_drain; } ;
struct regnode_fixed_init_def {int * gpio_pin; int gpio_open_drain; int reg_init_def; } ;
struct regnode {int dummy; } ;
typedef int device_t ;
struct TYPE_4__ {int always_on; } ;
struct TYPE_3__ {int always_on; } ;


 int ENXIO ;
 int device_printf (int ,char*) ;
 struct regnode* regnode_create (int ,int *,int *) ;
 int regnode_fixed_class ;
 TYPE_2__* regnode_get_gpio_entry (int *) ;
 struct regnode_fixed_sc* regnode_get_softc (struct regnode*) ;
 struct regnode* regnode_register (struct regnode*) ;

int
regnode_fixed_register(device_t dev, struct regnode_fixed_init_def *init_def)
{
 struct regnode *regnode;
 struct regnode_fixed_sc *sc;

 regnode = regnode_create(dev, &regnode_fixed_class,
     &init_def->reg_init_def);
 if (regnode == ((void*)0)) {
  device_printf(dev, "Cannot create regulator.\n");
  return(ENXIO);
 }
 sc = regnode_get_softc(regnode);
 sc->gpio_open_drain = init_def->gpio_open_drain;
 if (init_def->gpio_pin != ((void*)0)) {
  sc->gpio_entry = regnode_get_gpio_entry(init_def->gpio_pin);
  if (sc->gpio_entry == ((void*)0))
   return(ENXIO);
 }
 regnode = regnode_register(regnode);
 if (regnode == ((void*)0)) {
  device_printf(dev, "Cannot register regulator.\n");
  return(ENXIO);
 }

 if (sc->gpio_entry != ((void*)0))
  sc->gpio_entry->always_on |= sc->param->always_on;

 return (0);
}
