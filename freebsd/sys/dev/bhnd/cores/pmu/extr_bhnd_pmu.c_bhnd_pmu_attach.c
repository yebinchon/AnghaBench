
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct bhnd_resource {int dummy; } ;
struct TYPE_3__ {int io_ctx; int io; } ;
struct bhnd_pmu_softc {int * chipc_dev; int * dev; int * clkctl; TYPE_1__ query; struct bhnd_resource* res; int io_ctx; int io; int cid; int board; int caps; } ;
typedef int * device_t ;
typedef scalar_t__ devclass_t ;


 int BHND_CLK_CTL_ST ;
 int BHND_PMU_CAP ;
 int BHND_PMU_MAX_TRANSITION_DLY ;
 int BHND_SERVICE_CHIPC ;
 int BHND_SERVICE_PMU ;
 int BPMU_LOCK_DESTROY (struct bhnd_pmu_softc*) ;
 int BPMU_LOCK_INIT (struct bhnd_pmu_softc*) ;
 int CTLFLAG_RD ;
 int CTLTYPE_UINT ;
 int ENOMEM ;
 int ENXIO ;
 int OID_AUTO ;
 int SYSCTL_ADD_PROC (struct sysctl_ctx_list*,int ,int ,char*,int,struct bhnd_pmu_softc*,int ,int ,char*,char*) ;
 int SYSCTL_CHILDREN (struct sysctl_oid*) ;
 int * bhnd_alloc_core_clkctl (int *,int *,struct bhnd_resource*,int ,int ) ;
 int bhnd_bus_read_4 (struct bhnd_resource*,int ) ;
 int bhnd_free_core_clkctl (int *) ;
 int * bhnd_get_chipid (int *) ;
 int bhnd_pmu_init (struct bhnd_pmu_softc*) ;
 int bhnd_pmu_query_fini (TYPE_1__*) ;
 int bhnd_pmu_query_init (TYPE_1__*,int *,int ,int *,struct bhnd_pmu_softc*) ;
 int bhnd_pmu_res_io ;
 int bhnd_pmu_sysctl_bus_freq ;
 int bhnd_pmu_sysctl_cpu_freq ;
 int bhnd_pmu_sysctl_mem_freq ;
 int bhnd_read_board_info (int *,int *) ;
 int bhnd_register_provider (int *,int ) ;
 int bhnd_release_provider (int *,int *,int ) ;
 int * bhnd_retain_provider (int *,int ) ;
 scalar_t__ devclass_find (char*) ;
 scalar_t__ device_get_devclass (int *) ;
 int device_get_nameunit (int *) ;
 int * device_get_parent (int *) ;
 struct bhnd_pmu_softc* device_get_softc (int *) ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int *) ;
 struct sysctl_oid* device_get_sysctl_tree (int *) ;
 int device_printf (int *,char*,...) ;

int
bhnd_pmu_attach(device_t dev, struct bhnd_resource *res)
{
 struct bhnd_pmu_softc *sc;
 struct sysctl_ctx_list *ctx;
 struct sysctl_oid *tree;
 devclass_t bhnd_class;
 device_t core, bus;
 int error;

 sc = device_get_softc(dev);
 sc->dev = dev;
 sc->res = res;


 sc->caps = bhnd_bus_read_4(sc->res, BHND_PMU_CAP);


 bhnd_class = devclass_find("bhnd");
 core = sc->dev;
 while ((bus = device_get_parent(core)) != ((void*)0)) {
  if (device_get_devclass(bus) == bhnd_class)
   break;

  core = bus;
 }

 if (core == ((void*)0)) {
  device_printf(sc->dev, "bhnd bus not found\n");
  return (ENXIO);
 }


 sc->cid = *bhnd_get_chipid(core);
 if ((error = bhnd_read_board_info(core, &sc->board))) {
  device_printf(sc->dev, "error fetching board info: %d\n",
      error);
  return (ENXIO);
 }


 error = bhnd_pmu_query_init(&sc->query, dev, sc->cid, &bhnd_pmu_res_io,
     sc);
 if (error)
  return (error);
 sc->io = sc->query.io;
 sc->io_ctx = sc->query.io_ctx;

 BPMU_LOCK_INIT(sc);




 sc->clkctl = bhnd_alloc_core_clkctl(core, dev, sc->res, BHND_CLK_CTL_ST,
     BHND_PMU_MAX_TRANSITION_DLY);
 if (sc->clkctl == ((void*)0)) {
  device_printf(sc->dev, "failed to allocate clkctl for %s\n",
      device_get_nameunit(core));
  error = ENOMEM;
  goto failed;
 }


 sc->chipc_dev = bhnd_retain_provider(dev, BHND_SERVICE_CHIPC);
 if (sc->chipc_dev == ((void*)0)) {
  device_printf(sc->dev, "chipcommon device not found\n");
  error = ENXIO;
  goto failed;
 }


 if ((error = bhnd_pmu_init(sc))) {
  device_printf(sc->dev, "PMU init failed: %d\n", error);
  goto failed;
 }


 if ((error = bhnd_register_provider(dev, BHND_SERVICE_PMU))) {
  device_printf(sc->dev, "failed to register PMU with bus : %d\n",
      error);
  goto failed;
 }


 ctx = device_get_sysctl_ctx(dev);
 tree = device_get_sysctl_tree(dev);

 SYSCTL_ADD_PROC(ctx, SYSCTL_CHILDREN(tree), OID_AUTO,
     "bus_freq", CTLTYPE_UINT | CTLFLAG_RD, sc, 0,
     bhnd_pmu_sysctl_bus_freq, "IU", "Bus clock frequency");

 SYSCTL_ADD_PROC(ctx, SYSCTL_CHILDREN(tree), OID_AUTO,
     "cpu_freq", CTLTYPE_UINT | CTLFLAG_RD, sc, 0,
     bhnd_pmu_sysctl_cpu_freq, "IU", "CPU clock frequency");

 SYSCTL_ADD_PROC(ctx, SYSCTL_CHILDREN(tree), OID_AUTO,
     "mem_freq", CTLTYPE_UINT | CTLFLAG_RD, sc, 0,
     bhnd_pmu_sysctl_mem_freq, "IU", "Memory clock frequency");

 return (0);

failed:
 BPMU_LOCK_DESTROY(sc);
 bhnd_pmu_query_fini(&sc->query);

 if (sc->clkctl != ((void*)0))
  bhnd_free_core_clkctl(sc->clkctl);

 if (sc->chipc_dev != ((void*)0)) {
  bhnd_release_provider(sc->dev, sc->chipc_dev,
      BHND_SERVICE_CHIPC);
 }

 return (error);
}
