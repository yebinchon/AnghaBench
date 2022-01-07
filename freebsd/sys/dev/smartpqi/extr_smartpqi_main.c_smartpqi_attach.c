
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_int32_t ;
struct TYPE_7__ {int pqi_hwif; int * pqi_regs_res0; int pqi_regs_rid0; int pqi_dev; int event_task; int eh; int wellness_periodic; int pqi_buffer_dmat; int map_lock; int pqi_parent_dmat; int mtx_init; int cam_lock; int sim_registered; } ;
struct TYPE_6__ {int max_sg_elem; int max_outstanding_io; } ;
struct TYPE_5__ {int pqi_bhandle; int pqi_btag; } ;
struct pqisrc_softstate {char* pci_mem_base_vaddr; char* os_name; TYPE_3__ os_specific; TYPE_2__ pqi_cap; TYPE_4__* rcb; TYPE_1__ pci_mem_handle; } ;
struct pqi_ident {int hwif; } ;
struct TYPE_8__ {int cm_datamap; } ;
typedef TYPE_4__ rcb_t ;
typedef int device_t ;


 int BUS_DMA_ALLOCNOW ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int BUS_SPACE_MAXSIZE_32BIT ;
 int BUS_SPACE_UNRESTRICTED ;
 int DBG_ERR (char*,...) ;
 int DBG_FUNC (char*,...) ;
 int DBG_INFO (char*,struct pqisrc_softstate*) ;
 int EINVAL ;
 int ENOMEM ;
 int ENXIO ;
 int EVENTHANDLER_REGISTER (int ,int ,struct pqisrc_softstate*,int ) ;
 int FALSE ;
 int MTX_DEF ;
 int PAGE_SIZE ;
 int PCIM_CMD_MEMEN ;
 int PCIR_BAR (int ) ;
 int PCIR_COMMAND ;

 int PQI_HWIF_UNKNOWN ;
 int PQI_STATUS_FAILURE ;
 int RF_ACTIVE ;
 int SHUTDOWN_PRI_DEFAULT ;
 int SYS_RES_MEMORY ;
 int TASK_INIT (int *,int ,int ,struct pqisrc_softstate*) ;
 int TRUE ;
 int * bus_alloc_resource_any (int ,int ,int *,int ) ;
 scalar_t__ bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int,int,int,int ,int *,int *,int *) ;
 int bus_dmamap_create (int ,int ,int *) ;
 int bus_get_dma_tag (int ) ;
 int bus_get_resource_start (int ,int ,int ) ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int * busdma_lock_mutex ;
 int create_char_dev (struct pqisrc_softstate*,int) ;
 struct pqisrc_softstate* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int hz ;
 int memset (struct pqisrc_softstate*,int ,int) ;
 int mtx_init (int *,char*,int *,int ) ;
 int os_start_heartbeat_timer (void*) ;
 int os_wellness_periodic ;
 int pci_enable_busmaster (int ) ;
 int pci_read_config (int ,int ,int) ;
 struct pqi_ident* pqi_find_ident (int ) ;
 int pqisrc_event_worker ;
 int pqisrc_init (struct pqisrc_softstate*) ;
 int pqisrc_save_controller_info (struct pqisrc_softstate*) ;
 int pqisrc_scan_devices (struct pqisrc_softstate*) ;
 int printf (char*) ;
 int register_sim (struct pqisrc_softstate*,int) ;
 int rman_get_bushandle (int *) ;
 int rman_get_bustag (int *) ;
 scalar_t__ rman_get_virtual (int *) ;
 int shutdown_final ;
 int smartpqi_shutdown ;
 int smartpqi_target_rescan (struct pqisrc_softstate*) ;
 int timeout (int ,struct pqisrc_softstate*,int) ;

__attribute__((used)) static int
smartpqi_attach(device_t dev)
{
 struct pqisrc_softstate *softs = ((void*)0);
 struct pqi_ident *id = ((void*)0);
 int error = 0;
 u_int32_t command = 0, i = 0;
 int card_index = device_get_unit(dev);
 rcb_t *rcbp = ((void*)0);




 softs = device_get_softc(dev);

 if (!softs) {
  printf("Could not get softc\n");
  error = EINVAL;
  goto out;
 }
 memset(softs, 0, sizeof(*softs));
 softs->os_specific.pqi_dev = dev;

 DBG_FUNC("IN\n");


 error = ENXIO;




 pci_enable_busmaster(softs->os_specific.pqi_dev);
 command = pci_read_config(softs->os_specific.pqi_dev, PCIR_COMMAND, 2);
 if ((command & PCIM_CMD_MEMEN) == 0) {
  DBG_ERR("memory window not available command = %d\n", command);
  error = ENXIO;
  goto out;
 }





 id = pqi_find_ident(dev);
 softs->os_specific.pqi_hwif = id->hwif;

 switch(softs->os_specific.pqi_hwif) {
  case 128:
   DBG_INFO("set hardware up for PMC SRCv for %p", softs);
   break;
  default:
   softs->os_specific.pqi_hwif = PQI_HWIF_UNKNOWN;
   DBG_ERR("unknown hardware type\n");
   error = ENXIO;
   goto out;
 }

 pqisrc_save_controller_info(softs);




 softs->os_specific.pqi_regs_rid0 = PCIR_BAR(0);
 if ((softs->os_specific.pqi_regs_res0 =
  bus_alloc_resource_any(softs->os_specific.pqi_dev, SYS_RES_MEMORY,
  &softs->os_specific.pqi_regs_rid0, RF_ACTIVE)) == ((void*)0)) {
  DBG_ERR("couldn't allocate register window 0\n");

  error = ENOMEM;
  goto out;
 }

 bus_get_resource_start(softs->os_specific.pqi_dev, SYS_RES_MEMORY,
  softs->os_specific.pqi_regs_rid0);

 softs->pci_mem_handle.pqi_btag = rman_get_bustag(softs->os_specific.pqi_regs_res0);
 softs->pci_mem_handle.pqi_bhandle = rman_get_bushandle(softs->os_specific.pqi_regs_res0);

 softs->pci_mem_base_vaddr = (char *)rman_get_virtual(softs->os_specific.pqi_regs_res0);






 if (bus_dma_tag_create(bus_get_dma_tag(dev),
    PAGE_SIZE, 0,
    BUS_SPACE_MAXADDR_32BIT,
    BUS_SPACE_MAXADDR,
    ((void*)0), ((void*)0),
    BUS_SPACE_MAXSIZE_32BIT,
    BUS_SPACE_UNRESTRICTED,
    BUS_SPACE_MAXSIZE_32BIT,
    0,
    ((void*)0), ((void*)0),
    &softs->os_specific.pqi_parent_dmat)) {
  DBG_ERR("can't allocate parent DMA tag\n");

  error = ENOMEM;
  goto dma_out;
 }

 softs->os_specific.sim_registered = FALSE;
 softs->os_name = "FreeBSD ";


 error = pqisrc_init(softs);
 if (error) {
  DBG_ERR("Failed to initialize pqi lib error = %d\n", error);
  error = PQI_STATUS_FAILURE;
  goto out;
 }

        mtx_init(&softs->os_specific.cam_lock, "cam_lock", ((void*)0), MTX_DEF);
        softs->os_specific.mtx_init = TRUE;
        mtx_init(&softs->os_specific.map_lock, "map_lock", ((void*)0), MTX_DEF);




        if (bus_dma_tag_create(softs->os_specific.pqi_parent_dmat,
    1, 0,
    BUS_SPACE_MAXADDR_32BIT,
    BUS_SPACE_MAXADDR,
    ((void*)0), ((void*)0),
    softs->pqi_cap.max_sg_elem*PAGE_SIZE,
    softs->pqi_cap.max_sg_elem,
    BUS_SPACE_MAXSIZE_32BIT,
    BUS_DMA_ALLOCNOW,
    busdma_lock_mutex,
    &softs->os_specific.map_lock,
    &softs->os_specific.pqi_buffer_dmat)) {
  DBG_ERR("can't allocate buffer DMA tag for pqi_buffer_dmat\n");
  return (ENOMEM);
        }

 rcbp = &softs->rcb[1];
 for( i = 1; i <= softs->pqi_cap.max_outstanding_io; i++, rcbp++ ) {
  if ((error = bus_dmamap_create(softs->os_specific.pqi_buffer_dmat, 0, &rcbp->cm_datamap)) != 0) {
   DBG_ERR("Cant create datamap for buf @"
   "rcbp = %p maxio = %d error = %d\n",
   rcbp, softs->pqi_cap.max_outstanding_io, error);
   goto dma_out;
  }
 }

 os_start_heartbeat_timer((void *)softs);
 softs->os_specific.wellness_periodic = timeout( os_wellness_periodic,
       softs, 120*hz);

 softs->os_specific.eh = EVENTHANDLER_REGISTER(shutdown_final,
    smartpqi_shutdown, softs, SHUTDOWN_PRI_DEFAULT);

 error = pqisrc_scan_devices(softs);
 if (error) {
  DBG_ERR("Failed to scan lib error = %d\n", error);
  error = PQI_STATUS_FAILURE;
  goto out;
 }

 error = register_sim(softs, card_index);
 if (error) {
  DBG_ERR("Failed to register sim index = %d error = %d\n",
   card_index, error);
  goto out;
 }

 smartpqi_target_rescan(softs);

 TASK_INIT(&softs->os_specific.event_task, 0, pqisrc_event_worker,softs);

 error = create_char_dev(softs, card_index);
 if (error) {
  DBG_ERR("Failed to register character device index=%d r=%d\n",
   card_index, error);
  goto out;
 }
 goto out;

dma_out:
 if (softs->os_specific.pqi_regs_res0 != ((void*)0))
  bus_release_resource(softs->os_specific.pqi_dev, SYS_RES_MEMORY,
   softs->os_specific.pqi_regs_rid0,
   softs->os_specific.pqi_regs_res0);
out:
 DBG_FUNC("OUT error = %d\n", error);
 return(error);
}
