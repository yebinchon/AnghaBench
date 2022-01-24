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
struct intr_vector {int /*<<< orphan*/  iv_event; } ;
struct fo_msiq_record {size_t fomqr_word0; } ;
struct fire_softc {size_t sc_msiq_size; int /*<<< orphan*/  sc_dev; } ;
struct TYPE_2__ {struct fire_softc* fica_sc; } ;
struct fire_msiqarg {size_t fmqa_msiq; size_t fmqa_msi; scalar_t__ fmqa_tail; scalar_t__ fmqa_head; struct fo_msiq_record* fmqa_base; TYPE_1__ fmqa_fica; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 size_t FUNC0 (struct fire_softc*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct fire_softc*,scalar_t__,size_t) ; 
 size_t FO_MQR_WORD0_DATA0_MASK ; 
 size_t FO_MQR_WORD0_DATA0_SHFT ; 
 size_t FO_MQR_WORD0_FMT_TYPE_MASK ; 
 size_t FO_MQR_WORD0_FMT_TYPE_MSI32 ; 
 size_t FO_MQR_WORD0_FMT_TYPE_MSI64 ; 
 scalar_t__ FO_PCI_EQ_CTRL_CLR_BASE ; 
 size_t FO_PCI_EQ_CTRL_CLR_COVERR ; 
 size_t FO_PCI_EQ_HD_MASK ; 
 size_t FO_PCI_EQ_HD_SHFT ; 
 size_t FO_PCI_EQ_TL_OVERR ; 
 scalar_t__ FO_PCI_MSI_CLR_BASE ; 
 size_t FO_PCI_MSI_CLR_EQWR_N ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,size_t) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,size_t) ; 

__attribute__((used)) static inline void
FUNC8(struct intr_vector *iv, struct fire_msiqarg *fmqa)
{
	struct fire_softc *sc;
	struct fo_msiq_record *qrec;
	device_t dev;
	uint64_t word0;
	u_int head, msi, msiq;

	sc = fmqa->fmqa_fica.fica_sc;
	dev = sc->sc_dev;
	msiq = fmqa->fmqa_msiq;
	head = (FUNC0(sc, fmqa->fmqa_head) & FO_PCI_EQ_HD_MASK) >>
	    FO_PCI_EQ_HD_SHFT;
	qrec = &fmqa->fmqa_base[head];
	word0 = qrec->fomqr_word0;
	for (;;) {
		if (FUNC3((word0 & FO_MQR_WORD0_FMT_TYPE_MASK) == 0))
			break;
		FUNC2((word0 & FO_MQR_WORD0_FMT_TYPE_MSI64) != 0 ||
		    (word0 & FO_MQR_WORD0_FMT_TYPE_MSI32) != 0,
		    ("%s: received non-MSI/MSI-X message in event queue %d "
		    "(word0 %#llx)", FUNC4(dev), msiq,
		    (unsigned long long)word0));
		msi = (word0 & FO_MQR_WORD0_DATA0_MASK) >>
		    FO_MQR_WORD0_DATA0_SHFT;
		/*
		 * Sanity check the MSI/MSI-X as long as we use a 1:1 mapping.
		 */
		FUNC2(msi == fmqa->fmqa_msi,
		    ("%s: received non-matching MSI/MSI-X in event queue %d "
		    "(%d versus %d)", FUNC4(dev), msiq, msi,
		    fmqa->fmqa_msi));
		FUNC1(sc, FO_PCI_MSI_CLR_BASE + (msi << 3),
		    FO_PCI_MSI_CLR_EQWR_N);
		if (FUNC3(FUNC6(iv->iv_event,
		    NULL) != 0))
			FUNC7("stray MSI/MSI-X in event queue %d\n", msiq);
		qrec->fomqr_word0 &= ~FO_MQR_WORD0_FMT_TYPE_MASK;
		head = (head + 1) % sc->sc_msiq_size;
		qrec = &fmqa->fmqa_base[head];
		word0 = qrec->fomqr_word0;
	}
	FUNC1(sc, fmqa->fmqa_head, (head & FO_PCI_EQ_HD_MASK) <<
	    FO_PCI_EQ_HD_SHFT);
	if (FUNC3((FUNC0(sc, fmqa->fmqa_tail) &
	    FO_PCI_EQ_TL_OVERR) != 0)) {
		FUNC5(dev, "event queue %d overflow\n", msiq);
		msiq <<= 3;
		FUNC1(sc, FO_PCI_EQ_CTRL_CLR_BASE + msiq,
		    FUNC0(sc, FO_PCI_EQ_CTRL_CLR_BASE + msiq) |
		    FO_PCI_EQ_CTRL_CLR_COVERR);
	}
}