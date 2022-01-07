
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {struct mrsas_softc* ich_arg; int ich_func; } ;
struct mrsas_softc {int device_id; int mrsas_gen3_ctrl; int is_ventura; int is_aero; int msix_enable; int * reg_res; void* reg_res_id; int mrsas_dev; int stream_lock; int raidmap_lock; int mfi_cmd_pool_lock; int mpt_cmd_pool_lock; int ioctl_lock; int io_lock; int pci_lock; int aen_lock; int sim_lock; int ocr_chan; scalar_t__ ocr_thread_active; TYPE_1__ mrsas_ich; int ocr_thread; scalar_t__ UnevenSpanSupport; int adprecovery; scalar_t__ io_cmds_highwater; int sge_holes; int prp_count; int target_reset_outstanding; int fw_outstanding; int mrsas_mfi_cmd_list_head; int mrsas_mpt_cmd_list_head; int bus_handle; int bus_tag; } ;
typedef int device_t ;


 int ENXIO ;
 int MRSAS_HBA_OPERATIONAL ;






 int MTX_DEF ;
 int MTX_SPIN ;
 int PCIM_CMD_BUSMASTEREN ;
 int PCIM_CMD_PORTEN ;
 void* PCIR_BAR (int) ;
 int PCIR_COMMAND ;
 int RF_ACTIVE ;
 int SUCCESS ;
 int SYS_RES_MEMORY ;
 int TAILQ_INIT (int *) ;
 int * bus_alloc_resource_any (int ,int ,void**,int ) ;
 int bus_release_resource (int ,int ,void*,int *) ;
 scalar_t__ config_intrhook_establish (TYPE_1__*) ;
 struct mrsas_softc* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*,...) ;
 int memset (struct mrsas_softc*,int ,int) ;
 int mrsas_atomic_set (int *,int ) ;
 int mrsas_cam_attach (struct mrsas_softc*) ;
 int mrsas_cam_detach (struct mrsas_softc*) ;
 int mrsas_free_mem (struct mrsas_softc*) ;
 int mrsas_get_tunables (struct mrsas_softc*) ;
 int mrsas_ich_startup ;
 int mrsas_init_fw (struct mrsas_softc*) ;
 int mrsas_kproc_create (int ,struct mrsas_softc*,int *,int ,int ,char*,int ) ;
 int mrsas_ocr_thread ;
 int mrsas_setup_irq (struct mrsas_softc*) ;
 int mrsas_setup_sysctl (struct mrsas_softc*) ;
 int mrsas_teardown_intr (struct mrsas_softc*) ;
 int mtx_destroy (int *) ;
 int mtx_init (int *,char*,int *,int ) ;
 int pci_get_device (int ) ;
 int pci_read_config (int ,int ,int) ;
 int pci_release_msi (int ) ;
 int pci_write_config (int ,int ,int,int) ;
 int rman_get_bushandle (int *) ;
 int rman_get_bustag (int *) ;
 int wakeup (int *) ;

__attribute__((used)) static int
mrsas_attach(device_t dev)
{
 struct mrsas_softc *sc = device_get_softc(dev);
 uint32_t cmd, error;

 memset(sc, 0, sizeof(struct mrsas_softc));


 sc->mrsas_dev = dev;
 sc->device_id = pci_get_device(dev);

 switch (sc->device_id) {
 case 131:
 case 135:
 case 133:
 case 132:
 case 137:
 case 136:
  sc->mrsas_gen3_ctrl = 1;
  break;
 case 129:
 case 139:
 case 134:
 case 130:
 case 128:
 case 138:
  sc->is_ventura = 1;
  break;
 case 146:
 case 142:
  device_printf(dev, "Adapter is in configurable secure mode\n");
 case 145:
 case 141:
  sc->is_aero = 1;
  break;
 case 147:
 case 144:
 case 143:
 case 140:
  device_printf(dev, "Adapter is in non-secure mode\n");
  return SUCCESS;

 }

 mrsas_get_tunables(sc);




 cmd = pci_read_config(dev, PCIR_COMMAND, 2);
 if ((cmd & PCIM_CMD_PORTEN) == 0) {
  return (ENXIO);
 }

 cmd |= PCIM_CMD_BUSMASTEREN;
 pci_write_config(dev, PCIR_COMMAND, cmd, 2);


 if (sc->is_ventura || sc->is_aero)
  sc->reg_res_id = PCIR_BAR(0);
 else
  sc->reg_res_id = PCIR_BAR(1);

 if ((sc->reg_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY,
     &(sc->reg_res_id), RF_ACTIVE))
     == ((void*)0)) {
  device_printf(dev, "Cannot allocate PCI registers\n");
  goto attach_fail;
 }
 sc->bus_tag = rman_get_bustag(sc->reg_res);
 sc->bus_handle = rman_get_bushandle(sc->reg_res);


 mtx_init(&sc->sim_lock, "mrsas_sim_lock", ((void*)0), MTX_DEF);
 mtx_init(&sc->pci_lock, "mrsas_pci_lock", ((void*)0), MTX_DEF);
 mtx_init(&sc->io_lock, "mrsas_io_lock", ((void*)0), MTX_DEF);
 mtx_init(&sc->aen_lock, "mrsas_aen_lock", ((void*)0), MTX_DEF);
 mtx_init(&sc->ioctl_lock, "mrsas_ioctl_lock", ((void*)0), MTX_SPIN);
 mtx_init(&sc->mpt_cmd_pool_lock, "mrsas_mpt_cmd_pool_lock", ((void*)0), MTX_DEF);
 mtx_init(&sc->mfi_cmd_pool_lock, "mrsas_mfi_cmd_pool_lock", ((void*)0), MTX_DEF);
 mtx_init(&sc->raidmap_lock, "mrsas_raidmap_lock", ((void*)0), MTX_DEF);
 mtx_init(&sc->stream_lock, "mrsas_stream_lock", ((void*)0), MTX_DEF);


 TAILQ_INIT(&sc->mrsas_mpt_cmd_list_head);
 TAILQ_INIT(&sc->mrsas_mfi_cmd_list_head);

 mrsas_atomic_set(&sc->fw_outstanding, 0);
 mrsas_atomic_set(&sc->target_reset_outstanding, 0);
 mrsas_atomic_set(&sc->prp_count, 0);
 mrsas_atomic_set(&sc->sge_holes, 0);

 sc->io_cmds_highwater = 0;

 sc->adprecovery = MRSAS_HBA_OPERATIONAL;
 sc->UnevenSpanSupport = 0;

 sc->msix_enable = 0;


 if (mrsas_init_fw(sc) != SUCCESS) {
  goto attach_fail_fw;
 }

 if ((mrsas_cam_attach(sc) != SUCCESS)) {
  goto attach_fail_cam;
 }

 if (mrsas_setup_irq(sc) != SUCCESS) {
  goto attach_fail_irq;
 }
 error = mrsas_kproc_create(mrsas_ocr_thread, sc,
     &sc->ocr_thread, 0, 0, "mrsas_ocr%d",
     device_get_unit(sc->mrsas_dev));
 if (error) {
  device_printf(sc->mrsas_dev, "Error %d starting OCR thread\n", error);
  goto attach_fail_ocr_thread;
 }




 sc->mrsas_ich.ich_func = mrsas_ich_startup;
 sc->mrsas_ich.ich_arg = sc;
 if (config_intrhook_establish(&sc->mrsas_ich) != 0) {
  device_printf(sc->mrsas_dev, "Config hook is already established\n");
 }
 mrsas_setup_sysctl(sc);
 return SUCCESS;

attach_fail_ocr_thread:
 if (sc->ocr_thread_active)
  wakeup(&sc->ocr_chan);
attach_fail_irq:
 mrsas_teardown_intr(sc);
attach_fail_cam:
 mrsas_cam_detach(sc);
attach_fail_fw:

 if (sc->msix_enable == 1)
  pci_release_msi(sc->mrsas_dev);
 mrsas_free_mem(sc);
 mtx_destroy(&sc->sim_lock);
 mtx_destroy(&sc->aen_lock);
 mtx_destroy(&sc->pci_lock);
 mtx_destroy(&sc->io_lock);
 mtx_destroy(&sc->ioctl_lock);
 mtx_destroy(&sc->mpt_cmd_pool_lock);
 mtx_destroy(&sc->mfi_cmd_pool_lock);
 mtx_destroy(&sc->raidmap_lock);
 mtx_destroy(&sc->stream_lock);
attach_fail:
 if (sc->reg_res) {
  bus_release_resource(sc->mrsas_dev, SYS_RES_MEMORY,
      sc->reg_res_id, sc->reg_res);
 }
 return (ENXIO);
}
