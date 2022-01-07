
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int hwrev; } ;
struct TYPE_7__ {int obj; } ;
struct TYPE_9__ {int eio; } ;
struct bcm_platform {int cfe_console; int cc_addr; int cc_caps; int cc_caps_ext; int pmu_addr; int cpu_addr; int services; TYPE_2__ cpu_id; int cid; int pmu; TYPE_2__ pmu_id; TYPE_2__ cc_id; TYPE_1__ erom; TYPE_3__ erom_io; int erom_ops; int erom_impl; int * nvram_cls; int * nvram_io; } ;
typedef int bus_space_tag_t ;
typedef int bus_space_handle_t ;
typedef int bus_addr_t ;
struct TYPE_10__ {int io; } ;


 int BCM_CHIPC_READ_4 (struct bcm_platform*,int ) ;
 int BCM_ERR (char*,int) ;
 int BCM_SOC_BSH (int ,int ) ;
 int BCM_SOC_READ_4 (int,int ) ;
 int CFE_STDHANDLE_CONSOLE ;
 int CHIPC_CAP2_AOB ;
 int CHIPC_CAPABILITIES ;
 int CHIPC_CAPABILITIES_EXT ;
 int CHIPC_CAP_PMU ;
 int CHIPC_GET_FLAG (int,int ) ;
 scalar_t__ CHIPC_HWREV_HAS_CAP_EXT (int ) ;
 TYPE_4__ bcm_cfe_nvram ;
 int bcm_chipc_cores ;
 int bcm_cpu0_cores ;
 int bcm_erom_probe_and_attach (int *,int *,int *,int,int *,int *) ;
 int bcm_find_core (struct bcm_platform*,int ,int ,TYPE_2__*,int*) ;
 int bcm_get_bus_addr () ;
 int bcm_get_bus_size () ;
 int bcm_nvram_find_cfedev (TYPE_4__*,int **) ;
 int bcm_platform_data_avail ;
 int bcm_pmu_cores ;
 int bcm_pmu_soc_io ;
 int bhnd_erom_dump (int *) ;
 int bhnd_erom_io_fini (int *) ;
 int bhnd_erom_iobus_init (TYPE_3__*,int ,int ,int ,int ) ;
 int bhnd_pmu_query_init (int *,int *,int ,int *,struct bcm_platform*) ;
 int bhnd_service_registry_init (int *) ;
 scalar_t__ bootverbose ;
 int cfe_getstdhandle (int ) ;
 int memset (TYPE_2__*,int ,int) ;
 int mips_bus_space_generic ;
 int nitems (int ) ;

__attribute__((used)) static int
bcm_init_platform_data(struct bcm_platform *bp)
{
 bus_addr_t bus_addr, bus_size;
 bus_space_tag_t erom_bst;
 bus_space_handle_t erom_bsh;
 bool aob, pmu;
 int error;

 bus_addr = bcm_get_bus_addr();
 bus_size = bcm_get_bus_size();
 erom_bst = mips_bus_space_generic;
 erom_bsh = BCM_SOC_BSH(bus_addr, 0);

 error = bhnd_erom_iobus_init(&bp->erom_io, bus_addr, bus_size, erom_bst,
     erom_bsh);
 if (error) {
  BCM_ERR("failed to initialize erom I/O callbacks: %d\n", error);
  return (error);
 }

 error = bcm_erom_probe_and_attach(&bp->erom_impl, &bp->erom_ops,
     &bp->erom.obj, sizeof(bp->erom), &bp->erom_io.eio, &bp->cid);
 if (error) {
  BCM_ERR("error attaching erom parser: %d\n", error);
  bhnd_erom_io_fini(&bp->erom_io.eio);
  return (error);
 }

 if (bootverbose)
  bhnd_erom_dump(&bp->erom.obj);


 error = bcm_find_core(bp, bcm_chipc_cores, nitems(bcm_chipc_cores),
     &bp->cc_id, &bp->cc_addr);
 if (error) {
  BCM_ERR("error locating chipc core: %d\n", error);
  return (error);
 }


 bp->cc_caps = BCM_SOC_READ_4(bp->cc_addr, CHIPC_CAPABILITIES);
 bp->cc_caps_ext = 0x0;

 if (CHIPC_HWREV_HAS_CAP_EXT(bp->cc_id.hwrev))
  bp->cc_caps_ext = BCM_CHIPC_READ_4(bp, CHIPC_CAPABILITIES_EXT);


 pmu = CHIPC_GET_FLAG(bp->cc_caps, CHIPC_CAP_PMU);
 aob = CHIPC_GET_FLAG(bp->cc_caps_ext, CHIPC_CAP2_AOB);

 if (pmu && aob) {

  error = bcm_find_core(bp, bcm_pmu_cores, nitems(bcm_pmu_cores),
      &bp->pmu_id, &bp->pmu_addr);
  if (error) {
   BCM_ERR("error locating pmu core: %d\n", error);
   return (error);
  }
 } else if (pmu) {

  bp->pmu_addr = bp->cc_addr;
  bp->pmu_id = bp->cc_id;
 } else {

  bp->pmu_addr = 0x0;
  memset(&bp->pmu_id, 0, sizeof(bp->pmu_id));
 }


 if (pmu) {
  error = bhnd_pmu_query_init(&bp->pmu, ((void*)0), bp->cid,
      &bcm_pmu_soc_io, bp);
  if (error) {
   BCM_ERR("bhnd_pmu_query_init() failed: %d\n", error);
   return (error);
  }
 }


 error = bcm_find_core(bp, bcm_cpu0_cores, nitems(bcm_cpu0_cores),
     &bp->cpu_id, &bp->cpu_addr);
 if (error) {
  BCM_ERR("error locating CPU core: %d\n", error);
  return (error);
 }


 if ((error = bhnd_service_registry_init(&bp->services))) {
  BCM_ERR("error initializing service registry: %d\n", error);
  return (error);
 }

 bcm_platform_data_avail = 1;
 return (0);
}
