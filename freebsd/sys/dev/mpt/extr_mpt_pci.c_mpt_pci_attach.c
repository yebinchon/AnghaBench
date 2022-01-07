
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mpt_softc {int is_fc; int is_1078; int is_sas; int is_spi; scalar_t__ verbose; scalar_t__ disabled; int * eh; int ih; int * pci_irq; scalar_t__ msi_enable; int * pci_reg; void* pci_sh; void* pci_st; void* pci_pio_sh; void* pci_pio_st; int * pci_pio_reg; int mpt_ini_id; int role; int raid_queue_depth; int raid_mwce_setting; int raid_resync_rate; int unit; int dev; } ;
typedef int device_t ;


 int * EVENTHANDLER_REGISTER (int ,int ,int ,int ) ;
 int FALSE ;
 int MPT_IFLAGS ;
 int MPT_INI_ID_NONE ;
 int MPT_LOCK_DESTROY (struct mpt_softc*) ;
 int MPT_LOCK_SETUP (struct mpt_softc*) ;
 scalar_t__ MPT_PRT_NONE ;
 scalar_t__ MPT_PRT_WARN ;
 int MPT_RAID_MWCE_DEFAULT ;
 int MPT_RAID_QUEUE_DEPTH_DEFAULT ;
 int MPT_RAID_RESYNC_RATE_DEFAULT ;
 int MPT_ROLE_NONE ;
 int OF_getscsinitid (int ) ;
 int PCIM_BIOS_ENABLE ;
 int PCIM_CMD_BUSMASTEREN ;
 int PCIM_CMD_MWRICEN ;
 int PCIM_CMD_PERRESPEN ;
 int PCIM_CMD_SERRESPEN ;
 int PCIR_BAR (int) ;
 int PCIR_BIOS ;
 int PCIR_COMMAND ;
 scalar_t__ PCI_BAR_IO (int) ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SHUTDOWN_PRI_LAST ;
 int SYS_RES_IOPORT ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 scalar_t__ bootverbose ;
 void* bus_alloc_resource_any (int ,int ,int*,int) ;
 scalar_t__ bus_setup_intr (int ,int *,int ,int *,int ,struct mpt_softc*,int *) ;
 scalar_t__ device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*) ;
 scalar_t__ mpt_attach (struct mpt_softc*) ;
 int mpt_detach (struct mpt_softc*) ;
 int mpt_disable_ints (struct mpt_softc*) ;
 scalar_t__ mpt_dma_mem_alloc (struct mpt_softc*) ;
 int mpt_dma_mem_free (struct mpt_softc*) ;
 int mpt_free_bus_resources (struct mpt_softc*) ;
 int mpt_link_peer (struct mpt_softc*) ;
 int mpt_pci_intr ;
 int mpt_pci_shutdown ;
 int mpt_prt (struct mpt_softc*,char*) ;
 int mpt_raid_free_mem (struct mpt_softc*) ;
 int mpt_read_config_regs (struct mpt_softc*) ;
 int mpt_reset (struct mpt_softc*,int ) ;
 int mpt_set_options (struct mpt_softc*) ;
 int mpt_unlink_peer (struct mpt_softc*) ;
 scalar_t__ pci_alloc_msi (int ,int*) ;
 scalar_t__ pci_alloc_msix (int ,int*) ;
 int pci_disable_io (int ,int ) ;
 int pci_get_device (int ) ;
 int pci_read_config (int ,int,int) ;
 int pci_write_config (int ,int,int,int) ;
 void* rman_get_bushandle (int *) ;
 void* rman_get_bustag (int *) ;
 int shutdown_post_sync ;

__attribute__((used)) static int
mpt_pci_attach(device_t dev)
{
 struct mpt_softc *mpt;
 int iqd;
 uint32_t val;
 int mpt_io_bar, mpt_mem_bar;

 mpt = (struct mpt_softc*)device_get_softc(dev);

 switch (pci_get_device(dev)) {
 case 151:
 case 152:
 case 150:
 case 147:
 case 146:
 case 143:
 case 145:
 case 144:
 case 149:
 case 148:
 case 142:
 case 141:
  mpt->is_fc = 1;
  break;
 case 129:
 case 128:
  mpt->is_1078 = 1;

 case 138:
 case 137:
 case 136:
 case 135:
 case 134:
 case 133:
 case 132:
 case 131:
 case 130:
  mpt->is_sas = 1;
  break;
 default:
  mpt->is_spi = 1;
  break;
 }
 mpt->dev = dev;
 mpt->unit = device_get_unit(dev);
 mpt->raid_resync_rate = MPT_RAID_RESYNC_RATE_DEFAULT;
 mpt->raid_mwce_setting = MPT_RAID_MWCE_DEFAULT;
 mpt->raid_queue_depth = MPT_RAID_QUEUE_DEPTH_DEFAULT;
 mpt->verbose = MPT_PRT_NONE;
 mpt->role = MPT_ROLE_NONE;
 mpt->mpt_ini_id = MPT_INI_ID_NONE;




 mpt_set_options(mpt);
 if (mpt->verbose == MPT_PRT_NONE) {
  mpt->verbose = MPT_PRT_WARN;

  mpt->verbose += (bootverbose != 0)? 1 : 0;
 }




 val = pci_read_config(dev, PCIR_COMMAND, 2);
 val |= PCIM_CMD_SERRESPEN | PCIM_CMD_PERRESPEN |
     PCIM_CMD_BUSMASTEREN | PCIM_CMD_MWRICEN;
 pci_write_config(dev, PCIR_COMMAND, val, 2);




 val = pci_read_config(dev, PCIR_BIOS, 4);
 val &= ~PCIM_BIOS_ENABLE;
 pci_write_config(dev, PCIR_BIOS, val, 4);
 val = pci_read_config(dev, PCIR_BAR(0), 4);
 if (PCI_BAR_IO(val)) {

  mpt_io_bar = 0;
  mpt_mem_bar = 1;
 } else {

  mpt_mem_bar = 0;
  mpt_io_bar = 1;
 }






 mpt_io_bar = PCIR_BAR(mpt_io_bar);
 mpt->pci_pio_reg = bus_alloc_resource_any(dev, SYS_RES_IOPORT,
     &mpt_io_bar, RF_ACTIVE);
 if (mpt->pci_pio_reg == ((void*)0)) {
  if (bootverbose) {
   device_printf(dev,
       "unable to map registers in PIO mode\n");
  }
 } else {
  mpt->pci_pio_st = rman_get_bustag(mpt->pci_pio_reg);
  mpt->pci_pio_sh = rman_get_bushandle(mpt->pci_pio_reg);
 }

 mpt_mem_bar = PCIR_BAR(mpt_mem_bar);
 mpt->pci_reg = bus_alloc_resource_any(dev, SYS_RES_MEMORY,
     &mpt_mem_bar, RF_ACTIVE);
 if (mpt->pci_reg == ((void*)0)) {
  if (bootverbose || mpt->is_sas || mpt->pci_pio_reg == ((void*)0)) {
   device_printf(dev,
       "Unable to memory map registers.\n");
  }
  if (mpt->is_sas || mpt->pci_pio_reg == ((void*)0)) {
   device_printf(dev, "Giving Up.\n");
   goto bad;
  }
  if (bootverbose) {
   device_printf(dev, "Falling back to PIO mode.\n");
  }
  mpt->pci_st = mpt->pci_pio_st;
  mpt->pci_sh = mpt->pci_pio_sh;
 } else {
  mpt->pci_st = rman_get_bustag(mpt->pci_reg);
  mpt->pci_sh = rman_get_bushandle(mpt->pci_reg);
 }


 iqd = 0;
 if (mpt->msi_enable) {




  val = 1;
  if (pci_alloc_msix(dev, &val) == 0)
   iqd = 1;
  val = 1;
  if (iqd == 0 && pci_alloc_msi(dev, &val) == 0)
   iqd = 1;
 }
 mpt->pci_irq = bus_alloc_resource_any(dev, SYS_RES_IRQ, &iqd,
     RF_ACTIVE | (iqd != 0 ? 0 : RF_SHAREABLE));
 if (mpt->pci_irq == ((void*)0)) {
  device_printf(dev, "could not allocate interrupt\n");
  goto bad;
 }

 MPT_LOCK_SETUP(mpt);


 mpt_disable_ints(mpt);


 if (bus_setup_intr(dev, mpt->pci_irq, MPT_IFLAGS, ((void*)0), mpt_pci_intr,
     mpt, &mpt->ih)) {
  device_printf(dev, "could not setup interrupt\n");
  goto bad;
 }


 if (mpt_dma_mem_alloc(mpt)) {
  mpt_prt(mpt, "Could not allocate DMA memory\n");
  goto bad;
 }
 if (mpt->is_sas) {
  pci_disable_io(dev, SYS_RES_IOPORT);
 }


 if (mpt->disabled == 0) {
  if (mpt_attach(mpt) != 0) {
   goto bad;
  }
 } else {
  mpt_prt(mpt, "device disabled at user request\n");
  goto bad;
 }

 mpt->eh = EVENTHANDLER_REGISTER(shutdown_post_sync, mpt_pci_shutdown,
     dev, SHUTDOWN_PRI_LAST);

 if (mpt->eh == ((void*)0)) {
  mpt_prt(mpt, "shutdown event registration failed\n");
  mpt_disable_ints(mpt);
  (void) mpt_detach(mpt);
  mpt_reset(mpt, FALSE);
  mpt_raid_free_mem(mpt);
  goto bad;
 }
 return (0);

bad:
 mpt_dma_mem_free(mpt);
 mpt_free_bus_resources(mpt);




 MPT_LOCK_DESTROY(mpt);




 return (0);
}
