
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_35__ TYPE_5__ ;
typedef struct TYPE_34__ TYPE_4__ ;
typedef struct TYPE_33__ TYPE_3__ ;
typedef struct TYPE_32__ TYPE_2__ ;
typedef struct TYPE_31__ TYPE_21__ ;
typedef struct TYPE_30__ TYPE_1__ ;


typedef int uint32_t ;
struct isp_spi {int dummy; } ;
struct TYPE_32__ {int * ptr; } ;
struct TYPE_33__ {TYPE_2__ pc; TYPE_21__* fw; } ;
struct TYPE_34__ {int isp_nchan; int isp_revision; int isp_nirq; int isp_lock; TYPE_3__ isp_osinfo; int * isp_param; int isp_port; TYPE_5__* isp_mdvec; int * isp_regs2; int * isp_regs; void* isp_type; void* isp_dev; } ;
struct isp_pcisoftc {scalar_t__ rgd; scalar_t__ rtp; scalar_t__ rtp1; scalar_t__ rgd1; scalar_t__ rtp2; scalar_t__ rgd2; TYPE_4__ pci_isp; int * regs2; int * regs1; int * regs; scalar_t__ msicount; TYPE_1__* irq; void** pci_poff; void* pci_dev; } ;
struct isp_fc {int dummy; } ;
typedef int sdparam ;
typedef TYPE_4__ ispsoftc_t ;
typedef int fwname ;
typedef int fcparam ;
typedef void* device_t ;
struct TYPE_35__ {int dv_ispfw; } ;
struct TYPE_31__ {int data; } ;
struct TYPE_30__ {scalar_t__ iqd; int * irq; int ih; } ;


 size_t BIU_BLOCK ;
 void* BIU_REGS_OFF ;
 size_t DMA_BLOCK ;
 void* DMA_REGS_OFF ;
 int ENXIO ;
 void* ISP1080_DMA_REGS_OFF ;
 void* ISP_HA_FC_2100 ;
 void* ISP_HA_FC_2200 ;
 void* ISP_HA_FC_2300 ;
 void* ISP_HA_FC_2312 ;
 void* ISP_HA_FC_2322 ;
 void* ISP_HA_FC_2400 ;
 void* ISP_HA_FC_2500 ;
 void* ISP_HA_FC_2600 ;
 void* ISP_HA_FC_2700 ;
 void* ISP_HA_SCSI_10160 ;
 void* ISP_HA_SCSI_1080 ;
 void* ISP_HA_SCSI_12160 ;
 void* ISP_HA_SCSI_1240 ;
 void* ISP_HA_SCSI_1280 ;
 void* ISP_HA_SCSI_UNKNOWN ;
 int ISP_LOCK (TYPE_4__*) ;
 int ISP_LOGCONFIG ;
 int ISP_LOGDEBUG0 ;
 int ISP_LOGWARN ;
 int ISP_UNLOCK (TYPE_4__*) ;
 scalar_t__ IS_2300 (TYPE_4__*) ;
 scalar_t__ IS_2322 (TYPE_4__*) ;
 scalar_t__ IS_23XX (TYPE_4__*) ;
 scalar_t__ IS_24XX (TYPE_4__*) ;
 scalar_t__ IS_26XX (TYPE_4__*) ;
 scalar_t__ IS_FC (TYPE_4__*) ;
 size_t MBOX_BLOCK ;
 int MTX_DEF ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_ZERO ;
 int PCIM_CMD_BUSMASTEREN ;
 int PCIM_CMD_INTX_DISABLE ;
 int PCIM_CMD_INVEN ;
 int PCIM_CMD_PERRESPEN ;
 int PCIM_CMD_SEREN ;
 void* PCIR_BAR (int) ;
 int PCIR_CACHELNSZ ;
 int PCIR_COMMAND ;
 int PCIR_LATTIMER ;
 int PCIR_ROMADDR ;
 int PCI_DFLT_LNSZ ;
 int PCI_DFLT_LTNCY ;
 void* PCI_MBOX_REGS2100_OFF ;
 void* PCI_MBOX_REGS2300_OFF ;
 void* PCI_MBOX_REGS2400_OFF ;
 void* PCI_MBOX_REGS_OFF ;
 void* PCI_RISC_REGS_OFF ;
 void* PCI_SXP_REGS_OFF ;
 int RF_ACTIVE ;
 size_t RISC_BLOCK ;
 size_t SXP_BLOCK ;
 scalar_t__ SYS_RES_IOPORT ;
 scalar_t__ SYS_RES_IRQ ;
 void* SYS_RES_MEMORY ;
 size_t _BLK_REG_SHFT ;
 scalar_t__ bootverbose ;
 void* bus_alloc_resource_any (void*,scalar_t__,scalar_t__*,int ) ;
 int bus_release_resource (void*,scalar_t__,scalar_t__,int *) ;
 int bus_teardown_intr (void*,int *,int ) ;
 struct isp_pcisoftc* device_get_softc (void*) ;
 int device_printf (void*,char*,...) ;
 TYPE_21__* firmware_get (char*) ;
 int free (int *,int ) ;
 scalar_t__ isp_attach (TYPE_4__*) ;
 int isp_get_generic_options (void*,TYPE_4__*) ;
 int isp_get_specific_options (void*,int,TYPE_4__*) ;
 scalar_t__ isp_nvports ;
 int isp_prt (TYPE_4__*,int ,char*,...) ;
 scalar_t__ isp_reinit (TYPE_4__*,int) ;
 int isp_shutdown (TYPE_4__*) ;
 void* malloc (size_t,int ,int) ;
 TYPE_5__ mdvec ;
 TYPE_5__ mdvec_1080 ;
 TYPE_5__ mdvec_12160 ;
 TYPE_5__ mdvec_2100 ;
 TYPE_5__ mdvec_2200 ;
 TYPE_5__ mdvec_2300 ;
 TYPE_5__ mdvec_2400 ;
 TYPE_5__ mdvec_2500 ;
 TYPE_5__ mdvec_2600 ;
 TYPE_5__ mdvec_2700 ;
 int mtx_destroy (int *) ;
 int mtx_init (int *,char*,int *,int ) ;
 int const pci_get_devid (void*) ;
 int pci_get_function (void*) ;
 int pci_get_revid (void*) ;
 int pci_read_config (void*,int ,int) ;
 int pci_release_msi (void*) ;
 int pci_write_config (void*,int ,int,int) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static int
isp_pci_attach(device_t dev)
{
 struct isp_pcisoftc *pcs = device_get_softc(dev);
 ispsoftc_t *isp = &pcs->pci_isp;
 int i;
 uint32_t data, cmd, linesz, did;
 size_t psize, xsize;
 char fwname[32];

 pcs->pci_dev = dev;
 isp->isp_dev = dev;
 isp->isp_nchan = 1;
 mtx_init(&isp->isp_lock, "isp", ((void*)0), MTX_DEF);




 isp_nvports = 0;
 isp_get_generic_options(dev, isp);

 linesz = PCI_DFLT_LNSZ;
 pcs->regs = pcs->regs2 = ((void*)0);
 pcs->rgd = pcs->rtp = 0;

 pcs->pci_dev = dev;
 pcs->pci_poff[BIU_BLOCK >> _BLK_REG_SHFT] = BIU_REGS_OFF;
 pcs->pci_poff[MBOX_BLOCK >> _BLK_REG_SHFT] = PCI_MBOX_REGS_OFF;
 pcs->pci_poff[SXP_BLOCK >> _BLK_REG_SHFT] = PCI_SXP_REGS_OFF;
 pcs->pci_poff[RISC_BLOCK >> _BLK_REG_SHFT] = PCI_RISC_REGS_OFF;
 pcs->pci_poff[DMA_BLOCK >> _BLK_REG_SHFT] = DMA_REGS_OFF;

 switch (pci_get_devid(dev)) {
 case 149:
  did = 0x1040;
  isp->isp_mdvec = &mdvec;
  isp->isp_type = ISP_HA_SCSI_UNKNOWN;
  break;
 case 148:
  did = 0x1080;
  isp->isp_mdvec = &mdvec_1080;
  isp->isp_type = ISP_HA_SCSI_1080;
  pcs->pci_poff[DMA_BLOCK >> _BLK_REG_SHFT] = ISP1080_DMA_REGS_OFF;
  break;
 case 146:
  did = 0x1080;
  isp->isp_mdvec = &mdvec_1080;
  isp->isp_type = ISP_HA_SCSI_1240;
  isp->isp_nchan = 2;
  pcs->pci_poff[DMA_BLOCK >> _BLK_REG_SHFT] = ISP1080_DMA_REGS_OFF;
  break;
 case 145:
  did = 0x1080;
  isp->isp_mdvec = &mdvec_1080;
  isp->isp_type = ISP_HA_SCSI_1280;
  pcs->pci_poff[DMA_BLOCK >> _BLK_REG_SHFT] = ISP1080_DMA_REGS_OFF;
  break;
 case 150:
  did = 0x12160;
  isp->isp_mdvec = &mdvec_12160;
  isp->isp_type = ISP_HA_SCSI_10160;
  pcs->pci_poff[DMA_BLOCK >> _BLK_REG_SHFT] = ISP1080_DMA_REGS_OFF;
  break;
 case 147:
  did = 0x12160;
  isp->isp_nchan = 2;
  isp->isp_mdvec = &mdvec_12160;
  isp->isp_type = ISP_HA_SCSI_12160;
  pcs->pci_poff[DMA_BLOCK >> _BLK_REG_SHFT] = ISP1080_DMA_REGS_OFF;
  break;
 case 143:
  did = 0x2100;
  isp->isp_mdvec = &mdvec_2100;
  isp->isp_type = ISP_HA_FC_2100;
  pcs->pci_poff[MBOX_BLOCK >> _BLK_REG_SHFT] = PCI_MBOX_REGS2100_OFF;
  if (pci_get_revid(dev) < 3) {






   linesz = 1;
  }
  break;
 case 142:
  did = 0x2200;
  isp->isp_mdvec = &mdvec_2200;
  isp->isp_type = ISP_HA_FC_2200;
  pcs->pci_poff[MBOX_BLOCK >> _BLK_REG_SHFT] = PCI_MBOX_REGS2100_OFF;
  break;
 case 141:
  did = 0x2300;
  isp->isp_mdvec = &mdvec_2300;
  isp->isp_type = ISP_HA_FC_2300;
  pcs->pci_poff[MBOX_BLOCK >> _BLK_REG_SHFT] = PCI_MBOX_REGS2300_OFF;
  break;
 case 140:
 case 130:
  did = 0x2300;
  isp->isp_mdvec = &mdvec_2300;
  isp->isp_type = ISP_HA_FC_2312;
  pcs->pci_poff[MBOX_BLOCK >> _BLK_REG_SHFT] = PCI_MBOX_REGS2300_OFF;
  break;
 case 139:
 case 129:
  did = 0x2322;
  isp->isp_mdvec = &mdvec_2300;
  isp->isp_type = ISP_HA_FC_2322;
  pcs->pci_poff[MBOX_BLOCK >> _BLK_REG_SHFT] = PCI_MBOX_REGS2300_OFF;
  break;
 case 138:
 case 137:
  did = 0x2400;
  isp->isp_nchan += isp_nvports;
  isp->isp_mdvec = &mdvec_2400;
  isp->isp_type = ISP_HA_FC_2400;
  pcs->pci_poff[MBOX_BLOCK >> _BLK_REG_SHFT] = PCI_MBOX_REGS2400_OFF;
  break;
 case 136:
  did = 0x2500;
  isp->isp_nchan += isp_nvports;
  isp->isp_mdvec = &mdvec_2500;
  isp->isp_type = ISP_HA_FC_2500;
  pcs->pci_poff[MBOX_BLOCK >> _BLK_REG_SHFT] = PCI_MBOX_REGS2400_OFF;
  break;
 case 131:
  did = 0x2500;
  isp->isp_mdvec = &mdvec_2500;
  isp->isp_type = ISP_HA_FC_2500;
  pcs->pci_poff[MBOX_BLOCK >> _BLK_REG_SHFT] = PCI_MBOX_REGS2400_OFF;
  break;
 case 144:
 case 128:
  did = 0x2600;
  isp->isp_nchan += isp_nvports;
  isp->isp_mdvec = &mdvec_2600;
  isp->isp_type = ISP_HA_FC_2600;
  pcs->pci_poff[MBOX_BLOCK >> _BLK_REG_SHFT] = PCI_MBOX_REGS2400_OFF;
  break;
 case 135:
 case 134:
 case 133:
 case 132:
  did = 0x2700;
  isp->isp_nchan += isp_nvports;
  isp->isp_mdvec = &mdvec_2700;
  isp->isp_type = ISP_HA_FC_2700;
  pcs->pci_poff[MBOX_BLOCK >> _BLK_REG_SHFT] = PCI_MBOX_REGS2400_OFF;
  break;
 default:
  device_printf(dev, "unknown device type\n");
  goto bad;
  break;
 }
 isp->isp_revision = pci_get_revid(dev);

 if (IS_26XX(isp)) {
  pcs->rtp = SYS_RES_MEMORY;
  pcs->rgd = PCIR_BAR(0);
  pcs->regs = bus_alloc_resource_any(dev, pcs->rtp, &pcs->rgd,
      RF_ACTIVE);
  pcs->rtp1 = SYS_RES_MEMORY;
  pcs->rgd1 = PCIR_BAR(2);
  pcs->regs1 = bus_alloc_resource_any(dev, pcs->rtp1, &pcs->rgd1,
      RF_ACTIVE);
  pcs->rtp2 = SYS_RES_MEMORY;
  pcs->rgd2 = PCIR_BAR(4);
  pcs->regs2 = bus_alloc_resource_any(dev, pcs->rtp2, &pcs->rgd2,
      RF_ACTIVE);
 } else {
  pcs->rtp = SYS_RES_MEMORY;
  pcs->rgd = PCIR_BAR(1);
  pcs->regs = bus_alloc_resource_any(dev, pcs->rtp, &pcs->rgd,
      RF_ACTIVE);
  if (pcs->regs == ((void*)0)) {
   pcs->rtp = SYS_RES_IOPORT;
   pcs->rgd = PCIR_BAR(0);
   pcs->regs = bus_alloc_resource_any(dev, pcs->rtp,
       &pcs->rgd, RF_ACTIVE);
  }
 }
 if (pcs->regs == ((void*)0)) {
  device_printf(dev, "Unable to map any ports\n");
  goto bad;
 }
 if (bootverbose) {
  device_printf(dev, "Using %s space register mapping\n",
      (pcs->rtp == SYS_RES_IOPORT)? "I/O" : "Memory");
 }
 isp->isp_regs = pcs->regs;
 isp->isp_regs2 = pcs->regs2;

 if (IS_FC(isp)) {
  psize = sizeof (fcparam);
  xsize = sizeof (struct isp_fc);
 } else {
  psize = sizeof (sdparam);
  xsize = sizeof (struct isp_spi);
 }
 psize *= isp->isp_nchan;
 xsize *= isp->isp_nchan;
 isp->isp_param = malloc(psize, M_DEVBUF, M_NOWAIT | M_ZERO);
 if (isp->isp_param == ((void*)0)) {
  device_printf(dev, "cannot allocate parameter data\n");
  goto bad;
 }
 isp->isp_osinfo.pc.ptr = malloc(xsize, M_DEVBUF, M_NOWAIT | M_ZERO);
 if (isp->isp_osinfo.pc.ptr == ((void*)0)) {
  device_printf(dev, "cannot allocate parameter data\n");
  goto bad;
 }




 for (i = 0; i < isp->isp_nchan; i++) {
  isp_get_specific_options(dev, i, isp);
 }

 isp->isp_osinfo.fw = ((void*)0);
 if (isp->isp_osinfo.fw == ((void*)0)) {
  snprintf(fwname, sizeof (fwname), "isp_%04x", did);
  isp->isp_osinfo.fw = firmware_get(fwname);
 }
 if (isp->isp_osinfo.fw != ((void*)0)) {
  isp_prt(isp, ISP_LOGCONFIG, "loaded firmware %s", fwname);
  isp->isp_mdvec->dv_ispfw = isp->isp_osinfo.fw->data;
 }




 cmd = pci_read_config(dev, PCIR_COMMAND, 2);
 cmd |= PCIM_CMD_SEREN | PCIM_CMD_PERRESPEN | PCIM_CMD_BUSMASTEREN | PCIM_CMD_INVEN;
 if (IS_2300(isp)) {
  cmd &= ~PCIM_CMD_INVEN;
 }
 if (IS_2322(isp) || pci_get_devid(dev) == 130) {
  cmd &= ~PCIM_CMD_INTX_DISABLE;
 }
 if (IS_24XX(isp)) {
  cmd &= ~PCIM_CMD_INTX_DISABLE;
 }
 pci_write_config(dev, PCIR_COMMAND, cmd, 2);




 data = pci_read_config(dev, PCIR_CACHELNSZ, 1);
 if (data == 0 || (linesz != PCI_DFLT_LNSZ && data != linesz)) {
  isp_prt(isp, ISP_LOGDEBUG0, "set PCI line size to %d from %d", linesz, data);
  data = linesz;
  pci_write_config(dev, PCIR_CACHELNSZ, data, 1);
 }




 data = pci_read_config(dev, PCIR_LATTIMER, 1);
 if (data < PCI_DFLT_LTNCY) {
  data = PCI_DFLT_LTNCY;
  isp_prt(isp, ISP_LOGDEBUG0, "set PCI latency to %d", data);
  pci_write_config(dev, PCIR_LATTIMER, data, 1);
 }




 data = pci_read_config(dev, PCIR_ROMADDR, 4);
 data &= ~1;
 pci_write_config(dev, PCIR_ROMADDR, data, 4);




 if (IS_23XX(isp) || IS_24XX(isp)) {
  isp->isp_port = pci_get_function(dev);
 }




 ISP_LOCK(isp);
 if (isp_reinit(isp, 1) != 0) {
  ISP_UNLOCK(isp);
  goto bad;
 }
 ISP_UNLOCK(isp);
 if (isp_attach(isp)) {
  ISP_LOCK(isp);
  isp_shutdown(isp);
  ISP_UNLOCK(isp);
  goto bad;
 }
 return (0);

bad:
 if (isp->isp_osinfo.fw == ((void*)0) && !IS_26XX(isp)) {





  isp_prt(isp, ISP_LOGWARN, "See the ispfw(4) man page on "
      "how to load known good firmware at boot time");
 }
 for (i = 0; i < isp->isp_nirq; i++) {
  (void) bus_teardown_intr(dev, pcs->irq[i].irq, pcs->irq[i].ih);
  (void) bus_release_resource(dev, SYS_RES_IRQ, pcs->irq[i].iqd,
      pcs->irq[0].irq);
 }
 if (pcs->msicount) {
  pci_release_msi(dev);
 }
 if (pcs->regs)
  (void) bus_release_resource(dev, pcs->rtp, pcs->rgd, pcs->regs);
 if (pcs->regs1)
  (void) bus_release_resource(dev, pcs->rtp1, pcs->rgd1, pcs->regs1);
 if (pcs->regs2)
  (void) bus_release_resource(dev, pcs->rtp2, pcs->rgd2, pcs->regs2);
 if (pcs->pci_isp.isp_param) {
  free(pcs->pci_isp.isp_param, M_DEVBUF);
  pcs->pci_isp.isp_param = ((void*)0);
 }
 if (pcs->pci_isp.isp_osinfo.pc.ptr) {
  free(pcs->pci_isp.isp_osinfo.pc.ptr, M_DEVBUF);
  pcs->pci_isp.isp_osinfo.pc.ptr = ((void*)0);
 }
 mtx_destroy(&isp->isp_lock);
 return (ENXIO);
}
