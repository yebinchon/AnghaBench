
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource_list_entry {scalar_t__ start; int count; scalar_t__ end; } ;
struct resource_list {int dummy; } ;
struct dpaa_portals_softc {int* sc_rrid; TYPE_1__* sc_dp; scalar_t__ sc_dp_pa; int ** sc_rres; } ;
struct dpaa_portals_devinfo {int di_intr_pol; int di_intr_trig; struct resource_list di_res; } ;
typedef int device_t ;
struct TYPE_2__ {int dp_regs_mapped; int dp_irid; int * dp_ires; scalar_t__ dp_intr_num; int dp_ci_size; scalar_t__ dp_ci_pa; int dp_ce_size; scalar_t__ dp_ce_pa; } ;


 int ENXIO ;
 int E_OK ;
 int RF_ACTIVE ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int XX_MallocSmartInit () ;
 int XX_PreallocAndBindIntr (uintptr_t,int) ;
 int _TLB_ENTRY_IO ;
 int _TLB_ENTRY_MEM ;
 void* bus_alloc_resource (int ,int ,int*,scalar_t__,scalar_t__,int ,int ) ;
 int bus_generic_config_intr (int ,scalar_t__,int ,int ) ;
 int bus_release_resource (int ,int ,int,int *) ;
 struct dpaa_portals_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 struct resource_list_entry* resource_list_find (struct resource_list*,int ,int) ;
 int rman_get_bushandle (int *) ;
 int tlb1_set_entry (int ,scalar_t__,int ,int ) ;

int
dpaa_portal_alloc_res(device_t dev, struct dpaa_portals_devinfo *di, int cpu)
{
 struct dpaa_portals_softc *sc = device_get_softc(dev);
 struct resource_list_entry *rle;
 int err;
 struct resource_list *res;


 if (XX_MallocSmartInit() != E_OK)
  return (ENXIO);

 res = &di->di_res;






 if (sc->sc_rres[0] == ((void*)0)) {

  rle = resource_list_find(res, SYS_RES_MEMORY, 0);
  sc->sc_rrid[0] = 0;
  sc->sc_rres[0] = bus_alloc_resource(dev,
      SYS_RES_MEMORY, &sc->sc_rrid[0], rle->start + sc->sc_dp_pa,
      rle->end + sc->sc_dp_pa, rle->count, RF_ACTIVE);
  if (sc->sc_rres[0] == ((void*)0)) {
   device_printf(dev,
       "Could not allocate cache enabled memory.\n");
   return (ENXIO);
  }
  tlb1_set_entry(rman_get_bushandle(sc->sc_rres[0]),
      rle->start + sc->sc_dp_pa, rle->count, _TLB_ENTRY_MEM);

  rle = resource_list_find(res, SYS_RES_MEMORY, 1);
  sc->sc_rrid[1] = 1;
  sc->sc_rres[1] = bus_alloc_resource(dev,
      SYS_RES_MEMORY, &sc->sc_rrid[1], rle->start + sc->sc_dp_pa,
      rle->end + sc->sc_dp_pa, rle->count, RF_ACTIVE);
  if (sc->sc_rres[1] == ((void*)0)) {
   device_printf(dev,
       "Could not allocate cache inhibited memory.\n");
   bus_release_resource(dev, SYS_RES_MEMORY,
       sc->sc_rrid[0], sc->sc_rres[0]);
   return (ENXIO);
  }
  tlb1_set_entry(rman_get_bushandle(sc->sc_rres[1]),
      rle->start + sc->sc_dp_pa, rle->count, _TLB_ENTRY_IO);
  sc->sc_dp[cpu].dp_regs_mapped = 1;
 }

 rle = resource_list_find(res, SYS_RES_MEMORY, 0);
 sc->sc_dp[cpu].dp_ce_pa = rle->start + sc->sc_dp_pa;
 sc->sc_dp[cpu].dp_ce_size = rle->count;
 rle = resource_list_find(res, SYS_RES_MEMORY, 1);
 sc->sc_dp[cpu].dp_ci_pa = rle->start + sc->sc_dp_pa;
 sc->sc_dp[cpu].dp_ci_size = rle->count;


 rle = resource_list_find(res, SYS_RES_IRQ, 0);
 sc->sc_dp[cpu].dp_irid = 0;
 sc->sc_dp[cpu].dp_ires = bus_alloc_resource(dev,
     SYS_RES_IRQ, &sc->sc_dp[cpu].dp_irid, rle->start, rle->end,
     rle->count, RF_ACTIVE);

 sc->sc_dp[cpu].dp_intr_num = rle->start;

 if (sc->sc_dp[cpu].dp_ires == ((void*)0)) {
  device_printf(dev, "Could not allocate irq.\n");
  return (ENXIO);
 }

 err = XX_PreallocAndBindIntr((uintptr_t)sc->sc_dp[cpu].dp_ires, cpu);

 if (err != E_OK) {
  device_printf(dev, "Could not prealloc and bind interrupt\n");
  bus_release_resource(dev, SYS_RES_IRQ,
      sc->sc_dp[cpu].dp_irid, sc->sc_dp[cpu].dp_ires);
  sc->sc_dp[cpu].dp_ires = ((void*)0);
  return (ENXIO);
 }
 return (0);
}
