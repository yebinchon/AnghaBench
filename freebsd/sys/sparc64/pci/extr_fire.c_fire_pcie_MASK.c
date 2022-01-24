#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint64_t ;
typedef  size_t u_int ;
struct fo_msiq_record {size_t fomqr_word0; } ;
struct fire_softc {size_t sc_msiq_size; int /*<<< orphan*/  sc_dev; } ;
struct TYPE_2__ {struct fire_softc* fica_sc; } ;
struct fire_msiqarg {size_t fmqa_msiq; int /*<<< orphan*/  fmqa_mtx; scalar_t__ fmqa_tail; scalar_t__ fmqa_head; struct fo_msiq_record* fmqa_base; TYPE_1__ fmqa_fica; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int FILTER_HANDLED ; 
 size_t FUNC0 (struct fire_softc*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct fire_softc*,scalar_t__,size_t) ; 
 size_t FO_MQR_WORD0_DATA0_MASK ; 
 size_t FO_MQR_WORD0_DATA0_SHFT ; 
 size_t FO_MQR_WORD0_FMT_TYPE_MASK ; 
 size_t FO_MQR_WORD0_FMT_TYPE_MSG ; 
 scalar_t__ FO_PCI_EQ_CTRL_CLR_BASE ; 
 size_t FO_PCI_EQ_CTRL_CLR_COVERR ; 
 size_t FO_PCI_EQ_HD_MASK ; 
 size_t FO_PCI_EQ_HD_SHFT ; 
 size_t FO_PCI_EQ_TL_OVERR ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 size_t PCIE_MSG_CODE_ERR_COR ; 
 size_t PCIE_MSG_CODE_ERR_FATAL ; 
 size_t PCIE_MSG_CODE_ERR_NONFATAL ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static int
FUNC9(void *arg)
{
	struct fire_msiqarg *fmqa;
	struct fire_softc *sc;
	struct fo_msiq_record *qrec;
	device_t dev;
	uint64_t word0;
	u_int head, msg, msiq;

	fmqa = arg;
	sc = fmqa->fmqa_fica.fica_sc;
	dev = sc->sc_dev;
	msiq = fmqa->fmqa_msiq;
	FUNC6(&fmqa->fmqa_mtx);
	head = (FUNC0(sc, fmqa->fmqa_head) & FO_PCI_EQ_HD_MASK) >>
	    FO_PCI_EQ_HD_SHFT;
	qrec = &fmqa->fmqa_base[head];
	word0 = qrec->fomqr_word0;
	for (;;) {
		FUNC2((word0 & FO_MQR_WORD0_FMT_TYPE_MSG) != 0,
		    ("%s: received non-PCIe message in event queue %d "
		    "(word0 %#llx)", FUNC4(dev), msiq,
		    (unsigned long long)word0));
		msg = (word0 & FO_MQR_WORD0_DATA0_MASK) >>
		    FO_MQR_WORD0_DATA0_SHFT;

#define	PCIE_MSG_CODE_ERR_COR		0x30
#define	PCIE_MSG_CODE_ERR_NONFATAL	0x31
#define	PCIE_MSG_CODE_ERR_FATAL		0x33

		if (msg == PCIE_MSG_CODE_ERR_COR)
			FUNC5(dev, "correctable PCIe error\n");
		else if (msg == PCIE_MSG_CODE_ERR_NONFATAL ||
		    msg == PCIE_MSG_CODE_ERR_FATAL)
			FUNC8("%s: %sfatal PCIe error",
			    FUNC4(dev),
			    msg == PCIE_MSG_CODE_ERR_NONFATAL ? "non-" : "");
		else
			FUNC8("%s: received unknown PCIe message %#x",
			    FUNC4(dev), msg);
		qrec->fomqr_word0 &= ~FO_MQR_WORD0_FMT_TYPE_MASK;
		head = (head + 1) % sc->sc_msiq_size;
		qrec = &fmqa->fmqa_base[head];
		word0 = qrec->fomqr_word0;
		if (FUNC3((word0 & FO_MQR_WORD0_FMT_TYPE_MASK) == 0))
			break;
	}
	FUNC1(sc, fmqa->fmqa_head, (head & FO_PCI_EQ_HD_MASK) <<
	    FO_PCI_EQ_HD_SHFT);
	if ((FUNC0(sc, fmqa->fmqa_tail) &
	    FO_PCI_EQ_TL_OVERR) != 0) {
		FUNC5(dev, "event queue %d overflow\n", msiq);
		msiq <<= 3;
		FUNC1(sc, FO_PCI_EQ_CTRL_CLR_BASE + msiq,
		    FUNC0(sc, FO_PCI_EQ_CTRL_CLR_BASE + msiq) |
		    FO_PCI_EQ_CTRL_CLR_COVERR);
	}
	FUNC7(&fmqa->fmqa_mtx);
	return (FILTER_HANDLED);
}