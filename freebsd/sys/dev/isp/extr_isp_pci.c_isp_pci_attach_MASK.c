#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_35__   TYPE_5__ ;
typedef  struct TYPE_34__   TYPE_4__ ;
typedef  struct TYPE_33__   TYPE_3__ ;
typedef  struct TYPE_32__   TYPE_2__ ;
typedef  struct TYPE_31__   TYPE_21__ ;
typedef  struct TYPE_30__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct isp_spi {int dummy; } ;
struct TYPE_32__ {int /*<<< orphan*/ * ptr; } ;
struct TYPE_33__ {TYPE_2__ pc; TYPE_21__* fw; } ;
struct TYPE_34__ {int isp_nchan; int isp_revision; int isp_nirq; int /*<<< orphan*/  isp_lock; TYPE_3__ isp_osinfo; int /*<<< orphan*/ * isp_param; int /*<<< orphan*/  isp_port; TYPE_5__* isp_mdvec; int /*<<< orphan*/ * isp_regs2; int /*<<< orphan*/ * isp_regs; void* isp_type; void* isp_dev; } ;
struct isp_pcisoftc {scalar_t__ rgd; scalar_t__ rtp; scalar_t__ rtp1; scalar_t__ rgd1; scalar_t__ rtp2; scalar_t__ rgd2; TYPE_4__ pci_isp; int /*<<< orphan*/ * regs2; int /*<<< orphan*/ * regs1; int /*<<< orphan*/ * regs; scalar_t__ msicount; TYPE_1__* irq; void** pci_poff; void* pci_dev; } ;
struct isp_fc {int dummy; } ;
typedef  int /*<<< orphan*/  sdparam ;
typedef  TYPE_4__ ispsoftc_t ;
typedef  int /*<<< orphan*/  fwname ;
typedef  int /*<<< orphan*/  fcparam ;
typedef  void* device_t ;
struct TYPE_35__ {int /*<<< orphan*/  dv_ispfw; } ;
struct TYPE_31__ {int /*<<< orphan*/  data; } ;
struct TYPE_30__ {scalar_t__ iqd; int /*<<< orphan*/ * irq; int /*<<< orphan*/  ih; } ;

/* Variables and functions */
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
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  ISP_LOGCONFIG ; 
 int /*<<< orphan*/  ISP_LOGDEBUG0 ; 
 int /*<<< orphan*/  ISP_LOGWARN ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 scalar_t__ FUNC2 (TYPE_4__*) ; 
 scalar_t__ FUNC3 (TYPE_4__*) ; 
 scalar_t__ FUNC4 (TYPE_4__*) ; 
 scalar_t__ FUNC5 (TYPE_4__*) ; 
 scalar_t__ FUNC6 (TYPE_4__*) ; 
 scalar_t__ FUNC7 (TYPE_4__*) ; 
 size_t MBOX_BLOCK ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int PCIM_CMD_BUSMASTEREN ; 
 int PCIM_CMD_INTX_DISABLE ; 
 int PCIM_CMD_INVEN ; 
 int PCIM_CMD_PERRESPEN ; 
 int PCIM_CMD_SEREN ; 
 void* FUNC8 (int) ; 
 int /*<<< orphan*/  PCIR_CACHELNSZ ; 
 int /*<<< orphan*/  PCIR_COMMAND ; 
 int /*<<< orphan*/  PCIR_LATTIMER ; 
 int /*<<< orphan*/  PCIR_ROMADDR ; 
 int PCI_DFLT_LNSZ ; 
 int PCI_DFLT_LTNCY ; 
 void* PCI_MBOX_REGS2100_OFF ; 
 void* PCI_MBOX_REGS2300_OFF ; 
 void* PCI_MBOX_REGS2400_OFF ; 
 void* PCI_MBOX_REGS_OFF ; 
#define  PCI_QLOGIC_ISP10160 150 
#define  PCI_QLOGIC_ISP1020 149 
#define  PCI_QLOGIC_ISP1080 148 
#define  PCI_QLOGIC_ISP12160 147 
#define  PCI_QLOGIC_ISP1240 146 
#define  PCI_QLOGIC_ISP1280 145 
#define  PCI_QLOGIC_ISP2031 144 
#define  PCI_QLOGIC_ISP2100 143 
#define  PCI_QLOGIC_ISP2200 142 
#define  PCI_QLOGIC_ISP2300 141 
#define  PCI_QLOGIC_ISP2312 140 
#define  PCI_QLOGIC_ISP2322 139 
#define  PCI_QLOGIC_ISP2422 138 
#define  PCI_QLOGIC_ISP2432 137 
#define  PCI_QLOGIC_ISP2532 136 
#define  PCI_QLOGIC_ISP2684 135 
#define  PCI_QLOGIC_ISP2692 134 
#define  PCI_QLOGIC_ISP2714 133 
#define  PCI_QLOGIC_ISP2722 132 
#define  PCI_QLOGIC_ISP5432 131 
#define  PCI_QLOGIC_ISP6312 130 
#define  PCI_QLOGIC_ISP6322 129 
#define  PCI_QLOGIC_ISP8031 128 
 void* PCI_RISC_REGS_OFF ; 
 void* PCI_SXP_REGS_OFF ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 size_t RISC_BLOCK ; 
 size_t SXP_BLOCK ; 
 scalar_t__ SYS_RES_IOPORT ; 
 scalar_t__ SYS_RES_IRQ ; 
 void* SYS_RES_MEMORY ; 
 size_t _BLK_REG_SHFT ; 
 scalar_t__ bootverbose ; 
 void* FUNC9 (void*,scalar_t__,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (void*,scalar_t__,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct isp_pcisoftc* FUNC12 (void*) ; 
 int /*<<< orphan*/  FUNC13 (void*,char*,...) ; 
 TYPE_21__* FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC17 (void*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC18 (void*,int,TYPE_4__*) ; 
 scalar_t__ isp_nvports ; 
 int /*<<< orphan*/  FUNC19 (TYPE_4__*,int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC20 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_4__*) ; 
 void* FUNC22 (size_t,int /*<<< orphan*/ ,int) ; 
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
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int const FUNC25 (void*) ; 
 int /*<<< orphan*/  FUNC26 (void*) ; 
 int FUNC27 (void*) ; 
 int FUNC28 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC29 (void*) ; 
 int /*<<< orphan*/  FUNC30 (void*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC31 (char*,int,char*,int) ; 

__attribute__((used)) static int
FUNC32(device_t dev)
{
	struct isp_pcisoftc *pcs = FUNC12(dev);
	ispsoftc_t *isp = &pcs->pci_isp;
	int i;
	uint32_t data, cmd, linesz, did;
	size_t psize, xsize;
	char fwname[32];

	pcs->pci_dev = dev;
	isp->isp_dev = dev;
	isp->isp_nchan = 1;
	FUNC24(&isp->isp_lock, "isp", NULL, MTX_DEF);

	/*
	 * Get Generic Options
	 */
	isp_nvports = 0;
	FUNC17(dev, isp);

	linesz = PCI_DFLT_LNSZ;
	pcs->regs = pcs->regs2 = NULL;
	pcs->rgd = pcs->rtp = 0;

	pcs->pci_dev = dev;
	pcs->pci_poff[BIU_BLOCK >> _BLK_REG_SHFT] = BIU_REGS_OFF;
	pcs->pci_poff[MBOX_BLOCK >> _BLK_REG_SHFT] = PCI_MBOX_REGS_OFF;
	pcs->pci_poff[SXP_BLOCK >> _BLK_REG_SHFT] = PCI_SXP_REGS_OFF;
	pcs->pci_poff[RISC_BLOCK >> _BLK_REG_SHFT] = PCI_RISC_REGS_OFF;
	pcs->pci_poff[DMA_BLOCK >> _BLK_REG_SHFT] = DMA_REGS_OFF;

	switch (FUNC25(dev)) {
	case PCI_QLOGIC_ISP1020:
		did = 0x1040;
		isp->isp_mdvec = &mdvec;
		isp->isp_type = ISP_HA_SCSI_UNKNOWN;
		break;
	case PCI_QLOGIC_ISP1080:
		did = 0x1080;
		isp->isp_mdvec = &mdvec_1080;
		isp->isp_type = ISP_HA_SCSI_1080;
		pcs->pci_poff[DMA_BLOCK >> _BLK_REG_SHFT] = ISP1080_DMA_REGS_OFF;
		break;
	case PCI_QLOGIC_ISP1240:
		did = 0x1080;
		isp->isp_mdvec = &mdvec_1080;
		isp->isp_type = ISP_HA_SCSI_1240;
		isp->isp_nchan = 2;
		pcs->pci_poff[DMA_BLOCK >> _BLK_REG_SHFT] = ISP1080_DMA_REGS_OFF;
		break;
	case PCI_QLOGIC_ISP1280:
		did = 0x1080;
		isp->isp_mdvec = &mdvec_1080;
		isp->isp_type = ISP_HA_SCSI_1280;
		pcs->pci_poff[DMA_BLOCK >> _BLK_REG_SHFT] = ISP1080_DMA_REGS_OFF;
		break;
	case PCI_QLOGIC_ISP10160:
		did = 0x12160;
		isp->isp_mdvec = &mdvec_12160;
		isp->isp_type = ISP_HA_SCSI_10160;
		pcs->pci_poff[DMA_BLOCK >> _BLK_REG_SHFT] = ISP1080_DMA_REGS_OFF;
		break;
	case PCI_QLOGIC_ISP12160:
		did = 0x12160;
		isp->isp_nchan = 2;
		isp->isp_mdvec = &mdvec_12160;
		isp->isp_type = ISP_HA_SCSI_12160;
		pcs->pci_poff[DMA_BLOCK >> _BLK_REG_SHFT] = ISP1080_DMA_REGS_OFF;
		break;
	case PCI_QLOGIC_ISP2100:
		did = 0x2100;
		isp->isp_mdvec = &mdvec_2100;
		isp->isp_type = ISP_HA_FC_2100;
		pcs->pci_poff[MBOX_BLOCK >> _BLK_REG_SHFT] = PCI_MBOX_REGS2100_OFF;
		if (FUNC27(dev) < 3) {
			/*
			 * XXX: Need to get the actual revision
			 * XXX: number of the 2100 FB. At any rate,
			 * XXX: lower cache line size for early revision
			 * XXX; boards.
			 */
			linesz = 1;
		}
		break;
	case PCI_QLOGIC_ISP2200:
		did = 0x2200;
		isp->isp_mdvec = &mdvec_2200;
		isp->isp_type = ISP_HA_FC_2200;
		pcs->pci_poff[MBOX_BLOCK >> _BLK_REG_SHFT] = PCI_MBOX_REGS2100_OFF;
		break;
	case PCI_QLOGIC_ISP2300:
		did = 0x2300;
		isp->isp_mdvec = &mdvec_2300;
		isp->isp_type = ISP_HA_FC_2300;
		pcs->pci_poff[MBOX_BLOCK >> _BLK_REG_SHFT] = PCI_MBOX_REGS2300_OFF;
		break;
	case PCI_QLOGIC_ISP2312:
	case PCI_QLOGIC_ISP6312:
		did = 0x2300;
		isp->isp_mdvec = &mdvec_2300;
		isp->isp_type = ISP_HA_FC_2312;
		pcs->pci_poff[MBOX_BLOCK >> _BLK_REG_SHFT] = PCI_MBOX_REGS2300_OFF;
		break;
	case PCI_QLOGIC_ISP2322:
	case PCI_QLOGIC_ISP6322:
		did = 0x2322;
		isp->isp_mdvec = &mdvec_2300;
		isp->isp_type = ISP_HA_FC_2322;
		pcs->pci_poff[MBOX_BLOCK >> _BLK_REG_SHFT] = PCI_MBOX_REGS2300_OFF;
		break;
	case PCI_QLOGIC_ISP2422:
	case PCI_QLOGIC_ISP2432:
		did = 0x2400;
		isp->isp_nchan += isp_nvports;
		isp->isp_mdvec = &mdvec_2400;
		isp->isp_type = ISP_HA_FC_2400;
		pcs->pci_poff[MBOX_BLOCK >> _BLK_REG_SHFT] = PCI_MBOX_REGS2400_OFF;
		break;
	case PCI_QLOGIC_ISP2532:
		did = 0x2500;
		isp->isp_nchan += isp_nvports;
		isp->isp_mdvec = &mdvec_2500;
		isp->isp_type = ISP_HA_FC_2500;
		pcs->pci_poff[MBOX_BLOCK >> _BLK_REG_SHFT] = PCI_MBOX_REGS2400_OFF;
		break;
	case PCI_QLOGIC_ISP5432:
		did = 0x2500;
		isp->isp_mdvec = &mdvec_2500;
		isp->isp_type = ISP_HA_FC_2500;
		pcs->pci_poff[MBOX_BLOCK >> _BLK_REG_SHFT] = PCI_MBOX_REGS2400_OFF;
		break;
	case PCI_QLOGIC_ISP2031:
	case PCI_QLOGIC_ISP8031:
		did = 0x2600;
		isp->isp_nchan += isp_nvports;
		isp->isp_mdvec = &mdvec_2600;
		isp->isp_type = ISP_HA_FC_2600;
		pcs->pci_poff[MBOX_BLOCK >> _BLK_REG_SHFT] = PCI_MBOX_REGS2400_OFF;
		break;
	case PCI_QLOGIC_ISP2684:
	case PCI_QLOGIC_ISP2692:
	case PCI_QLOGIC_ISP2714:
	case PCI_QLOGIC_ISP2722:
		did = 0x2700;
		isp->isp_nchan += isp_nvports;
		isp->isp_mdvec = &mdvec_2700;
		isp->isp_type = ISP_HA_FC_2700;
		pcs->pci_poff[MBOX_BLOCK >> _BLK_REG_SHFT] = PCI_MBOX_REGS2400_OFF;
		break;
	default:
		FUNC13(dev, "unknown device type\n");
		goto bad;
		break;
	}
	isp->isp_revision = FUNC27(dev);

	if (FUNC6(isp)) {
		pcs->rtp = SYS_RES_MEMORY;
		pcs->rgd = FUNC8(0);
		pcs->regs = FUNC9(dev, pcs->rtp, &pcs->rgd,
		    RF_ACTIVE);
		pcs->rtp1 = SYS_RES_MEMORY;
		pcs->rgd1 = FUNC8(2);
		pcs->regs1 = FUNC9(dev, pcs->rtp1, &pcs->rgd1,
		    RF_ACTIVE);
		pcs->rtp2 = SYS_RES_MEMORY;
		pcs->rgd2 = FUNC8(4);
		pcs->regs2 = FUNC9(dev, pcs->rtp2, &pcs->rgd2,
		    RF_ACTIVE);
	} else {
		pcs->rtp = SYS_RES_MEMORY;
		pcs->rgd = FUNC8(1);
		pcs->regs = FUNC9(dev, pcs->rtp, &pcs->rgd,
		    RF_ACTIVE);
		if (pcs->regs == NULL) {
			pcs->rtp = SYS_RES_IOPORT;
			pcs->rgd = FUNC8(0);
			pcs->regs = FUNC9(dev, pcs->rtp,
			    &pcs->rgd, RF_ACTIVE);
		}
	}
	if (pcs->regs == NULL) {
		FUNC13(dev, "Unable to map any ports\n");
		goto bad;
	}
	if (bootverbose) {
		FUNC13(dev, "Using %s space register mapping\n",
		    (pcs->rtp == SYS_RES_IOPORT)? "I/O" : "Memory");
	}
	isp->isp_regs = pcs->regs;
	isp->isp_regs2 = pcs->regs2;

	if (FUNC7(isp)) {
		psize = sizeof (fcparam);
		xsize = sizeof (struct isp_fc);
	} else {
		psize = sizeof (sdparam);
		xsize = sizeof (struct isp_spi);
	}
	psize *= isp->isp_nchan;
	xsize *= isp->isp_nchan;
	isp->isp_param = FUNC22(psize, M_DEVBUF, M_NOWAIT | M_ZERO);
	if (isp->isp_param == NULL) {
		FUNC13(dev, "cannot allocate parameter data\n");
		goto bad;
	}
	isp->isp_osinfo.pc.ptr = FUNC22(xsize, M_DEVBUF, M_NOWAIT | M_ZERO);
	if (isp->isp_osinfo.pc.ptr == NULL) {
		FUNC13(dev, "cannot allocate parameter data\n");
		goto bad;
	}

	/*
	 * Now that we know who we are (roughly) get/set specific options
	 */
	for (i = 0; i < isp->isp_nchan; i++) {
		FUNC18(dev, i, isp);
	}

	isp->isp_osinfo.fw = NULL;
	if (isp->isp_osinfo.fw == NULL) {
		FUNC31(fwname, sizeof (fwname), "isp_%04x", did);
		isp->isp_osinfo.fw = FUNC14(fwname);
	}
	if (isp->isp_osinfo.fw != NULL) {
		FUNC19(isp, ISP_LOGCONFIG, "loaded firmware %s", fwname);
		isp->isp_mdvec->dv_ispfw = isp->isp_osinfo.fw->data;
	}

	/*
	 * Make sure that SERR, PERR, WRITE INVALIDATE and BUSMASTER are set.
	 */
	cmd = FUNC28(dev, PCIR_COMMAND, 2);
	cmd |= PCIM_CMD_SEREN | PCIM_CMD_PERRESPEN | PCIM_CMD_BUSMASTEREN | PCIM_CMD_INVEN;
	if (FUNC2(isp)) {	/* per QLogic errata */
		cmd &= ~PCIM_CMD_INVEN;
	}
	if (FUNC3(isp) || FUNC25(dev) == PCI_QLOGIC_ISP6312) {
		cmd &= ~PCIM_CMD_INTX_DISABLE;
	}
	if (FUNC5(isp)) {
		cmd &= ~PCIM_CMD_INTX_DISABLE;
	}
	FUNC30(dev, PCIR_COMMAND, cmd, 2);

	/*
	 * Make sure the Cache Line Size register is set sensibly.
	 */
	data = FUNC28(dev, PCIR_CACHELNSZ, 1);
	if (data == 0 || (linesz != PCI_DFLT_LNSZ && data != linesz)) {
		FUNC19(isp, ISP_LOGDEBUG0, "set PCI line size to %d from %d", linesz, data);
		data = linesz;
		FUNC30(dev, PCIR_CACHELNSZ, data, 1);
	}

	/*
	 * Make sure the Latency Timer is sane.
	 */
	data = FUNC28(dev, PCIR_LATTIMER, 1);
	if (data < PCI_DFLT_LTNCY) {
		data = PCI_DFLT_LTNCY;
		FUNC19(isp, ISP_LOGDEBUG0, "set PCI latency to %d", data);
		FUNC30(dev, PCIR_LATTIMER, data, 1);
	}

	/*
	 * Make sure we've disabled the ROM.
	 */
	data = FUNC28(dev, PCIR_ROMADDR, 4);
	data &= ~1;
	FUNC30(dev, PCIR_ROMADDR, data, 4);

	/*
	 * Last minute checks...
	 */
	if (FUNC4(isp) || FUNC5(isp)) {
		isp->isp_port = FUNC26(dev);
	}

	/*
	 * Make sure we're in reset state.
	 */
	FUNC0(isp);
	if (FUNC20(isp, 1) != 0) {
		FUNC1(isp);
		goto bad;
	}
	FUNC1(isp);
	if (FUNC16(isp)) {
		FUNC0(isp);
		FUNC21(isp);
		FUNC1(isp);
		goto bad;
	}
	return (0);

bad:
	if (isp->isp_osinfo.fw == NULL && !FUNC6(isp)) {
		/*
		 * Failure to attach at boot time might have been caused
		 * by a missing ispfw(4).  Except for for 16Gb adapters,
		 * there's no loadable firmware for them.
		 */
		FUNC19(isp, ISP_LOGWARN, "See the ispfw(4) man page on "
		    "how to load known good firmware at boot time");
	}
	for (i = 0; i < isp->isp_nirq; i++) {
		(void) FUNC11(dev, pcs->irq[i].irq, pcs->irq[i].ih);
		(void) FUNC10(dev, SYS_RES_IRQ, pcs->irq[i].iqd,
		    pcs->irq[0].irq);
	}
	if (pcs->msicount) {
		FUNC29(dev);
	}
	if (pcs->regs)
		(void) FUNC10(dev, pcs->rtp, pcs->rgd, pcs->regs);
	if (pcs->regs1)
		(void) FUNC10(dev, pcs->rtp1, pcs->rgd1, pcs->regs1);
	if (pcs->regs2)
		(void) FUNC10(dev, pcs->rtp2, pcs->rgd2, pcs->regs2);
	if (pcs->pci_isp.isp_param) {
		FUNC15(pcs->pci_isp.isp_param, M_DEVBUF);
		pcs->pci_isp.isp_param = NULL;
	}
	if (pcs->pci_isp.isp_osinfo.pc.ptr) {
		FUNC15(pcs->pci_isp.isp_osinfo.pc.ptr, M_DEVBUF);
		pcs->pci_isp.isp_osinfo.pc.ptr = NULL;
	}
	FUNC23(&isp->isp_lock);
	return (ENXIO);
}