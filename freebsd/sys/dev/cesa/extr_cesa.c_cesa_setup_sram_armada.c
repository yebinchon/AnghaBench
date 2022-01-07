
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ vm_offset_t ;
struct simplebus_softc {int nranges; TYPE_1__* ranges; int scells; int acells; } ;
struct resource_list_entry {scalar_t__ start; scalar_t__ end; int count; } ;
struct resource_list {int dummy; } ;
struct cesa_softc {int sc_cesa_engine_id; scalar_t__ sc_sram_base_pa; scalar_t__ sc_sram_base_va; int sc_sram_size; int sc_dev; } ;
typedef int sram_handle ;
typedef int phandle_t ;
typedef scalar_t__ pcell_t ;
typedef scalar_t__ ihandle_t ;
typedef int device_t ;
struct TYPE_2__ {scalar_t__ bus; scalar_t__ size; scalar_t__ host; } ;


 int ENOMEM ;
 int ENXIO ;
 int OF_getencprop (int ,char*,void*,int) ;
 int OF_instance_to_package (scalar_t__) ;
 int OF_parent (int ) ;
 int SYS_RES_MEMORY ;
 int device_from_node (int *,int ) ;
 struct simplebus_softc* device_get_softc (int ) ;
 int ofw_bus_get_node (int ) ;
 int ofw_bus_reg_to_rl (int ,int ,int ,int ,struct resource_list*) ;
 void* pmap_mapdev (scalar_t__,int ) ;
 struct resource_list_entry* resource_list_find (struct resource_list*,int ,int ) ;
 int resource_list_init (struct resource_list*) ;

__attribute__((used)) static int
cesa_setup_sram_armada(struct cesa_softc *sc)
{
 phandle_t sram_node;
 ihandle_t sram_ihandle;
 pcell_t sram_handle[2];
 void *sram_va;
 int rv, j;
 struct resource_list rl;
 struct resource_list_entry *rle;
 struct simplebus_softc *ssc;
 device_t sdev;


 rv = OF_getencprop(ofw_bus_get_node(sc->sc_dev), "marvell,crypto-srams",
     (void *)sram_handle, sizeof(sram_handle));
 if (rv <= 0)
  return (rv);

 if (sc->sc_cesa_engine_id >= 2)
  return (ENXIO);


 sram_ihandle = (ihandle_t)sram_handle[sc->sc_cesa_engine_id];
 sram_node = OF_instance_to_package(sram_ihandle);


 sdev = device_from_node(((void*)0), OF_parent(sram_node));
 if (!sdev)
  return (ENXIO);

 ssc = device_get_softc(sdev);

 resource_list_init(&rl);

 ofw_bus_reg_to_rl(sdev, sram_node, ssc->acells,
     ssc->scells, &rl);


 rle = resource_list_find(&rl, SYS_RES_MEMORY, 0);
 if (rle == ((void*)0))
  return (ENXIO);


 for (j = 0; j < ssc->nranges; j++) {
  if (rle->start >= ssc->ranges[j].bus &&
      rle->end < ssc->ranges[j].bus + ssc->ranges[j].size) {
   rle->start -= ssc->ranges[j].bus;
   rle->start += ssc->ranges[j].host;
   rle->end -= ssc->ranges[j].bus;
   rle->end += ssc->ranges[j].host;
  }
 }

 sc->sc_sram_base_pa = rle->start;
 sc->sc_sram_size = rle->count;


 sram_va = pmap_mapdev(sc->sc_sram_base_pa, sc->sc_sram_size);
 if (sram_va == ((void*)0))
  return (ENOMEM);
 sc->sc_sram_base_va = (vm_offset_t)sram_va;

 return (0);
}
