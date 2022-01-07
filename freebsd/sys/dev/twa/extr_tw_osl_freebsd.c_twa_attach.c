
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct twa_softc* osl_ctlr_ctxt; } ;
struct twa_softc {TYPE_1__ ctlr_handle; int * watchdog_callout; scalar_t__ watchdog_index; TYPE_2__* ctrl_dev; int bus_dev; int dma_mem_phys; int dma_mem; int non_dma_mem; int device_id; int flags; scalar_t__ irq_res_id; int * irq_res; int * reg_res; int bus_handle; int bus_tag; scalar_t__ reg_res_id; int * sysctl_tree; int sysctl_ctxt; int * sim_lock; int sim_lock_handle; int * q_lock; int q_lock_handle; int * io_lock; int io_lock_handle; } ;
typedef int device_t ;
struct TYPE_5__ {struct twa_softc* si_drv1; } ;
typedef scalar_t__ TW_INT32 ;


 int CTLFLAG_RD ;
 scalar_t__ ENXIO ;
 int GID_OPERATOR ;
 int MTX_DEF ;
 int MTX_RECURSE ;
 int MTX_SPIN ;
 int OID_AUTO ;
 scalar_t__ PCIR_BARS ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int * SYSCTL_ADD_NODE (int *,int ,int ,int ,int ,int ,char*) ;
 int SYSCTL_ADD_STRING (int *,int ,int ,char*,int ,int ,int ,char*) ;
 int SYSCTL_CHILDREN (int *) ;
 int SYSCTL_STATIC_CHILDREN (int ) ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int S_IRUSR ;
 int S_IWUSR ;
 int TW_CL_BAR_TYPE_MEM ;
 int TW_CL_MESSAGE_SOURCE_FREEBSD_DRIVER ;
 int TW_CL_SEVERITY_ERROR_STRING ;
 int TW_OSLI_MAX_NUM_AENS ;
 int TW_OSLI_MAX_NUM_REQUESTS ;
 int TW_OSL_DRIVER_VERSION_STRING ;
 int UID_ROOT ;
 int _hw ;
 void* bus_alloc_resource_any (int ,int ,scalar_t__*,int) ;
 int callout_init (int *,int) ;
 int callout_reset (int *,int,int ,TYPE_1__*) ;
 int device_get_nameunit (int ) ;
 struct twa_softc* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int hz ;
 TYPE_2__* make_dev (int *,int ,int ,int ,int,char*,int ) ;
 int mtx_init (int *,char*,int *,int) ;
 int pci_enable_busmaster (int ) ;
 int pci_get_device (int ) ;
 int rman_get_bushandle (int *) ;
 int rman_get_bustag (int *) ;
 int sysctl_ctx_init (int *) ;
 scalar_t__ tw_cl_get_pci_bar_info (int ,int ,scalar_t__*,scalar_t__*,scalar_t__*) ;
 scalar_t__ tw_cl_init_ctlr (TYPE_1__*,int ,int ,int ,int ,int ,int ,int ) ;
 scalar_t__ tw_osli_alloc_mem (struct twa_softc*) ;
 scalar_t__ tw_osli_cam_attach (struct twa_softc*) ;
 int tw_osli_dbg_dprintf (int,struct twa_softc*,char*) ;
 int tw_osli_free_resources (struct twa_softc*) ;
 int tw_osli_printf (struct twa_softc*,char*,int ,int ,int,char*,scalar_t__) ;
 int twa_cdevsw ;
 scalar_t__ twa_setup_intr (struct twa_softc*) ;
 int twa_watchdog ;

__attribute__((used)) static TW_INT32
twa_attach(device_t dev)
{
 struct twa_softc *sc = device_get_softc(dev);
 TW_INT32 bar_num;
 TW_INT32 bar0_offset;
 TW_INT32 bar_size;
 TW_INT32 error;

 tw_osli_dbg_dprintf(3, sc, "entered");

 sc->ctlr_handle.osl_ctlr_ctxt = sc;


 sc->bus_dev = dev;
 sc->device_id = pci_get_device(dev);


 sc->io_lock = &(sc->io_lock_handle);
 mtx_init(sc->io_lock, "tw_osl_io_lock", ((void*)0), MTX_SPIN);
 sc->q_lock = &(sc->q_lock_handle);
 mtx_init(sc->q_lock, "tw_osl_q_lock", ((void*)0), MTX_SPIN);
 sc->sim_lock = &(sc->sim_lock_handle);
 mtx_init(sc->sim_lock, "tw_osl_sim_lock", ((void*)0), MTX_DEF | MTX_RECURSE);

 sysctl_ctx_init(&sc->sysctl_ctxt);
 sc->sysctl_tree = SYSCTL_ADD_NODE(&sc->sysctl_ctxt,
  SYSCTL_STATIC_CHILDREN(_hw), OID_AUTO,
  device_get_nameunit(dev), CTLFLAG_RD, 0, "");
 if (sc->sysctl_tree == ((void*)0)) {
  tw_osli_printf(sc, "error = %d",
   TW_CL_SEVERITY_ERROR_STRING,
   TW_CL_MESSAGE_SOURCE_FREEBSD_DRIVER,
   0x2000,
   "Cannot add sysctl tree node",
   ENXIO);
  return(ENXIO);
 }
 SYSCTL_ADD_STRING(&sc->sysctl_ctxt, SYSCTL_CHILDREN(sc->sysctl_tree),
  OID_AUTO, "driver_version", CTLFLAG_RD,
  TW_OSL_DRIVER_VERSION_STRING, 0, "TWA driver version");


 pci_enable_busmaster(dev);


 if ((error = tw_cl_get_pci_bar_info(sc->device_id, TW_CL_BAR_TYPE_MEM,
  &bar_num, &bar0_offset, &bar_size))) {
  tw_osli_printf(sc, "error = %d",
   TW_CL_SEVERITY_ERROR_STRING,
   TW_CL_MESSAGE_SOURCE_FREEBSD_DRIVER,
   0x201F,
   "Can't get PCI BAR info",
   error);
  tw_osli_free_resources(sc);
  return(error);
 }
 sc->reg_res_id = PCIR_BARS + bar0_offset;
 if ((sc->reg_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY,
    &(sc->reg_res_id), RF_ACTIVE))
    == ((void*)0)) {
  tw_osli_printf(sc, "error = %d",
   TW_CL_SEVERITY_ERROR_STRING,
   TW_CL_MESSAGE_SOURCE_FREEBSD_DRIVER,
   0x2002,
   "Can't allocate register window",
   ENXIO);
  tw_osli_free_resources(sc);
  return(ENXIO);
 }
 sc->bus_tag = rman_get_bustag(sc->reg_res);
 sc->bus_handle = rman_get_bushandle(sc->reg_res);


 sc->irq_res_id = 0;
 if ((sc->irq_res = bus_alloc_resource_any(sc->bus_dev, SYS_RES_IRQ,
    &(sc->irq_res_id),
    RF_SHAREABLE | RF_ACTIVE)) == ((void*)0)) {
  tw_osli_printf(sc, "error = %d",
   TW_CL_SEVERITY_ERROR_STRING,
   TW_CL_MESSAGE_SOURCE_FREEBSD_DRIVER,
   0x2003,
   "Can't allocate interrupt",
   ENXIO);
  tw_osli_free_resources(sc);
  return(ENXIO);
 }
 if ((error = twa_setup_intr(sc))) {
  tw_osli_printf(sc, "error = %d",
   TW_CL_SEVERITY_ERROR_STRING,
   TW_CL_MESSAGE_SOURCE_FREEBSD_DRIVER,
   0x2004,
   "Can't set up interrupt",
   error);
  tw_osli_free_resources(sc);
  return(error);
 }

 if ((error = tw_osli_alloc_mem(sc))) {
  tw_osli_printf(sc, "error = %d",
   TW_CL_SEVERITY_ERROR_STRING,
   TW_CL_MESSAGE_SOURCE_FREEBSD_DRIVER,
   0x2005,
   "Memory allocation failure",
   error);
  tw_osli_free_resources(sc);
  return(error);
 }


 if ((error = tw_cl_init_ctlr(&sc->ctlr_handle, sc->flags, sc->device_id,
   TW_OSLI_MAX_NUM_REQUESTS, TW_OSLI_MAX_NUM_AENS,
   sc->non_dma_mem, sc->dma_mem,
   sc->dma_mem_phys
   ))) {
  tw_osli_printf(sc, "error = %d",
   TW_CL_SEVERITY_ERROR_STRING,
   TW_CL_MESSAGE_SOURCE_FREEBSD_DRIVER,
   0x2006,
   "Failed to initialize Common Layer/controller",
   error);
  tw_osli_free_resources(sc);
  return(error);
 }


 sc->ctrl_dev = make_dev(&twa_cdevsw, device_get_unit(sc->bus_dev),
   UID_ROOT, GID_OPERATOR, S_IRUSR | S_IWUSR,
   "twa%d", device_get_unit(sc->bus_dev));
 sc->ctrl_dev->si_drv1 = sc;

 if ((error = tw_osli_cam_attach(sc))) {
  tw_osli_free_resources(sc);
  tw_osli_printf(sc, "error = %d",
   TW_CL_SEVERITY_ERROR_STRING,
   TW_CL_MESSAGE_SOURCE_FREEBSD_DRIVER,
   0x2007,
   "Failed to initialize CAM",
   error);
  return(error);
 }

 sc->watchdog_index = 0;
 callout_init(&(sc->watchdog_callout[0]), 1);
 callout_init(&(sc->watchdog_callout[1]), 1);
 callout_reset(&(sc->watchdog_callout[0]), 5*hz, twa_watchdog, &sc->ctlr_handle);

 return(0);
}
