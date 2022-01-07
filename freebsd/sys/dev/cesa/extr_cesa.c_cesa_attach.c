
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource_list {int dummy; } ;
struct simplebus_devinfo {struct resource_list rl; } ;
struct cesa_softc {int sc_cesa_engine_id; } ;
typedef int device_t ;
struct TYPE_2__ {int rid; } ;


 scalar_t__ CESA0_CESA_ADDR ;
 scalar_t__ CESA0_TDMA_ADDR ;
 scalar_t__ CESA1_CESA_ADDR ;
 scalar_t__ CESA1_TDMA_ADDR ;
 scalar_t__ CESA_CESA_SIZE ;
 scalar_t__ CESA_TDMA_SIZE ;
 int ENXIO ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int cesa_attach_late (int ) ;
 struct simplebus_devinfo* device_get_ivars (int ) ;
 int device_get_parent (int ) ;
 struct cesa_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int ofw_bus_get_node (int ) ;
 int ofw_bus_is_compatible (int ,char*) ;
 int resource_list_add (struct resource_list*,int ,int,scalar_t__,int ,scalar_t__) ;
 int resource_list_delete (struct resource_list*,int ,int) ;
 TYPE_1__* resource_list_find (struct resource_list*,int ,int) ;
 int simplebus_add_device (int ,int ,int ,char*,int,int *) ;

__attribute__((used)) static int
cesa_attach(device_t dev)
{
 static int engine_idx = 0;
 struct simplebus_devinfo *ndi;
 struct resource_list *rl;
 struct cesa_softc *sc;

 if (!ofw_bus_is_compatible(dev, "marvell,armada-38x-crypto"))
  return (cesa_attach_late(dev));
 if ((ndi = device_get_ivars(dev)) == ((void*)0))
  return (ENXIO);

 rl = &ndi->rl;

 switch (engine_idx) {
  case 0:

   resource_list_add(rl, SYS_RES_MEMORY, 0, CESA0_TDMA_ADDR,
       CESA0_TDMA_ADDR + CESA_TDMA_SIZE - 1, CESA_TDMA_SIZE);
   resource_list_add(rl, SYS_RES_MEMORY, 1, CESA0_CESA_ADDR,
       CESA0_CESA_ADDR + CESA_CESA_SIZE - 1, CESA_CESA_SIZE);


   resource_list_delete(rl, SYS_RES_IRQ, 1);
   break;

  case 1:

   resource_list_add(rl, SYS_RES_MEMORY, 0, CESA1_TDMA_ADDR,
       CESA1_TDMA_ADDR + CESA_TDMA_SIZE - 1, CESA_TDMA_SIZE);
   resource_list_add(rl, SYS_RES_MEMORY, 1, CESA1_CESA_ADDR,
       CESA1_CESA_ADDR + CESA_CESA_SIZE - 1, CESA_CESA_SIZE);


   resource_list_delete(rl, SYS_RES_IRQ, 0);
   resource_list_find(rl, SYS_RES_IRQ, 1)->rid = 0;
   break;

  default:
   device_printf(dev, "Bad cesa engine_idx\n");
   return (ENXIO);
 }

 sc = device_get_softc(dev);
 sc->sc_cesa_engine_id = engine_idx;
 if (engine_idx == 0)
  simplebus_add_device(device_get_parent(dev), ofw_bus_get_node(dev),
      0, "cesa", 1, ((void*)0));

 engine_idx++;

 return (cesa_attach_late(dev));
}
