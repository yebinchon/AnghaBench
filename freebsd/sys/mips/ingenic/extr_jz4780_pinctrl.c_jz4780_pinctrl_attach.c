
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct simplebus_devinfo {int rl; } ;
struct resource_list_entry {int end; int start; } ;
struct resource_list {int dummy; } ;
struct jz4780_pinctrl_softc {int * dev; } ;
typedef scalar_t__ phandle_t ;
typedef int * device_t ;
typedef int bus_size_t ;
typedef int bus_addr_t ;


 struct resource_list* BUS_GET_RESOURCE_LIST (int ,int *) ;
 int CHIP_REG_OFFSET (int ,int) ;
 int CHIP_REG_STRIDE ;
 int ENXIO ;
 scalar_t__ OF_child (scalar_t__) ;
 int OF_hasprop (scalar_t__,char*) ;
 scalar_t__ OF_peer (scalar_t__) ;
 int SYS_RES_MEMORY ;
 int bus_generic_attach (int *) ;
 struct simplebus_devinfo* device_get_ivars (int *) ;
 int device_get_parent (int *) ;
 struct jz4780_pinctrl_softc* device_get_softc (int *) ;
 int fdt_pinctrl_configure_tree (int *) ;
 int fdt_pinctrl_register (int *,char*) ;
 scalar_t__ ofw_bus_get_node (int *) ;
 int resource_list_add (int *,int ,int ,int,int,int) ;
 struct resource_list_entry* resource_list_find (struct resource_list*,int ,int ) ;
 int * simplebus_add_device (int *,scalar_t__,int ,int *,int,int *) ;
 int simplebus_init (int *,int ) ;

__attribute__((used)) static int
jz4780_pinctrl_attach(device_t dev)
{
 struct jz4780_pinctrl_softc *sc;
 struct resource_list *rs;
 struct resource_list_entry *re;
 phandle_t dt_parent, dt_child;
 int i, ret;

 sc = device_get_softc(dev);
 sc->dev = dev;




 rs = BUS_GET_RESOURCE_LIST(device_get_parent(dev), dev);
 if (rs == ((void*)0))
  return (ENXIO);
 re = resource_list_find(rs, SYS_RES_MEMORY, 0);
 if (re == ((void*)0))
  return (ENXIO);

 simplebus_init(dev, 0);


 dt_parent = ofw_bus_get_node(dev);
 i = 0;
 for (dt_child = OF_child(dt_parent); dt_child != 0;
     dt_child = OF_peer(dt_child)) {
  struct simplebus_devinfo *ndi;
  device_t child;
  bus_addr_t phys;
  bus_size_t size;


  if (!OF_hasprop(dt_child, "gpio-controller"))
   continue;
  child = simplebus_add_device(dev, dt_child, 0, ((void*)0), -1, ((void*)0));
  if (child == ((void*)0))
   break;

  phys = CHIP_REG_OFFSET(re->start, i);
  size = CHIP_REG_STRIDE;
  if (phys + size - 1 <= re->end) {
   ndi = device_get_ivars(child);
   resource_list_add(&ndi->rl, SYS_RES_MEMORY, 0,
       phys, phys + size - 1, size);
  }
  i++;
 }

 ret = bus_generic_attach(dev);
 if (ret == 0) {
     fdt_pinctrl_register(dev, "ingenic,pins");
     fdt_pinctrl_configure_tree(dev);
 }
 return (ret);
}
