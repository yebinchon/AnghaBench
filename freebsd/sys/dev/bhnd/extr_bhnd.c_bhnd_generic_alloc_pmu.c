
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
typedef int uint32_t ;
typedef int u_int ;
struct resource_list_entry {int * res; } ;
struct resource_list {int dummy; } ;
struct bhnd_softc {int dev; } ;
struct bhnd_resource {int direct; int * res; } ;
struct bhnd_core_clkctl {int dummy; } ;
typedef scalar_t__ device_t ;
typedef int bus_size_t ;
typedef int bhnd_size_t ;
typedef int bhnd_addr_t ;


 int BHND_CLK_CTL_ST ;
 int BHND_PORT_DEVICE ;
 int BHND_SERVICE_PMU ;
 struct resource_list* BUS_GET_RESOURCE_LIST (scalar_t__,scalar_t__) ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int ENXIO ;
 int GIANT_REQUIRED ;
 int M_BHND ;
 int M_NOWAIT ;
 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 struct bhnd_core_clkctl* bhnd_alloc_core_clkctl (scalar_t__,scalar_t__,struct bhnd_resource*,int,int ) ;
 struct bhnd_core_clkctl* bhnd_get_pmu_info (scalar_t__) ;
 int bhnd_get_region_addr (scalar_t__,int ,int ,int ,int*,int*) ;
 int bhnd_pmu_get_max_transition_latency (scalar_t__) ;
 int bhnd_release_provider (scalar_t__,scalar_t__,int ) ;
 scalar_t__ bhnd_retain_provider (scalar_t__,int ) ;
 int bhnd_set_pmu_info (scalar_t__,struct bhnd_core_clkctl*) ;
 int device_get_nameunit (scalar_t__) ;
 scalar_t__ device_get_parent (scalar_t__) ;
 struct bhnd_softc* device_get_softc (scalar_t__) ;
 int device_printf (scalar_t__,char*,...) ;
 int free (struct bhnd_resource*,int ) ;
 struct bhnd_resource* malloc (int,int ,int ) ;
 int panic (char*,int ) ;
 struct resource_list_entry* resource_list_find (struct resource_list*,int ,int ) ;
 int rman_get_end (int *) ;
 int rman_get_flags (int *) ;
 int rman_get_start (int *) ;

int
bhnd_generic_alloc_pmu(device_t dev, device_t child)
{
 struct bhnd_softc *sc;
 struct bhnd_resource *r;
 struct bhnd_core_clkctl *clkctl;
 struct resource_list *rl;
 struct resource_list_entry *rle;
 device_t pmu_dev;
 bhnd_addr_t r_addr;
 bhnd_size_t r_size;
 bus_size_t pmu_regs;
 u_int max_latency;
 int error;

 GIANT_REQUIRED;

 if (device_get_parent(child) != dev)
  return (EINVAL);

 sc = device_get_softc(dev);
 clkctl = bhnd_get_pmu_info(child);
 pmu_regs = BHND_CLK_CTL_ST;


 if (clkctl != ((void*)0)) {
  panic("duplicate PMU allocation for %s",
      device_get_nameunit(child));
 }


 error = bhnd_get_region_addr(child, BHND_PORT_DEVICE, 0, 0, &r_addr,
     &r_size);
 if (error) {
  device_printf(sc->dev, "error fetching register block info for "
      "%s: %d\n", device_get_nameunit(child), error);
  return (error);
 }

 if (r_size < (pmu_regs + sizeof(uint32_t))) {
  device_printf(sc->dev, "pmu offset %#jx would overrun %s "
      "register block\n", (uintmax_t)pmu_regs,
      device_get_nameunit(child));
  return (ENODEV);
 }


 if ((rl = BUS_GET_RESOURCE_LIST(dev, child)) == ((void*)0)) {
  device_printf(dev, "NULL resource list returned for %s\n",
      device_get_nameunit(child));
  return (ENXIO);
 }

 if ((rle = resource_list_find(rl, SYS_RES_MEMORY, 0)) == ((void*)0)) {
  device_printf(dev, "cannot locate core register resource "
      "for %s\n", device_get_nameunit(child));
  return (ENXIO);
 }

 if (rle->res == ((void*)0)) {
  device_printf(dev, "core register resource unallocated for "
      "%s\n", device_get_nameunit(child));
  return (ENXIO);
 }

 if (r_addr+pmu_regs < rman_get_start(rle->res) ||
     r_addr+pmu_regs >= rman_get_end(rle->res))
 {
  device_printf(dev, "core register resource does not map PMU "
      "registers at %#jx\n for %s\n", r_addr+pmu_regs,
      device_get_nameunit(child));
  return (ENXIO);
 }







 if (rman_get_start(rle->res) > r_addr)
  pmu_regs -= rman_get_start(rle->res) - r_addr;
 else
  pmu_regs -= r_addr - rman_get_start(rle->res);


 pmu_dev = bhnd_retain_provider(child, BHND_SERVICE_PMU);
 if (pmu_dev == ((void*)0)) {
  device_printf(sc->dev, "PMU not found\n");
  return (ENXIO);
 }


 max_latency = bhnd_pmu_get_max_transition_latency(pmu_dev);




 r = malloc(sizeof(struct bhnd_resource), M_BHND, M_NOWAIT);
 if (r == ((void*)0)) {
  bhnd_release_provider(child, pmu_dev, BHND_SERVICE_PMU);
  return (ENOMEM);
 }

 r->res = rle->res;
 r->direct = ((rman_get_flags(rle->res) & RF_ACTIVE) != 0);


 clkctl = bhnd_alloc_core_clkctl(child, pmu_dev, r, pmu_regs,
     max_latency);
 if (clkctl == ((void*)0)) {
  free(r, M_BHND);
  bhnd_release_provider(child, pmu_dev, BHND_SERVICE_PMU);
  return (ENOMEM);
 }

 bhnd_set_pmu_info(child, clkctl);
 return (0);
}
