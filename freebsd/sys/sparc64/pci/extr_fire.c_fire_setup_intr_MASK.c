#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u_long ;
typedef  int u_int ;
struct resource {int dummy; } ;
struct fire_softc {int* sc_msi_msiq_table; size_t sc_msi_first; scalar_t__ sc_ign; scalar_t__ sc_msiq_first; scalar_t__ sc_msiq_ino_first; } ;
struct TYPE_3__ {scalar_t__ fica_clr; } ;
struct fire_msiqarg {int fmqa_msi; TYPE_1__ fmqa_fica; } ;
typedef  int /*<<< orphan*/  driver_intr_t ;
typedef  int /*<<< orphan*/  driver_filter_t ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_4__ {int /*<<< orphan*/ * iv_ic; int /*<<< orphan*/  iv_func; struct fire_msiqarg* iv_icarg; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct fire_softc*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct fire_softc*,scalar_t__,int) ; 
 scalar_t__ FO_PCI_EQ_CTRL_SET_BASE ; 
 int FO_PCI_EQ_CTRL_SET_EN ; 
 scalar_t__ FO_PCI_MSI_CLR_BASE ; 
 int FO_PCI_MSI_CLR_EQWR_N ; 
 scalar_t__ FO_PCI_MSI_MAP_BASE ; 
 int FO_PCI_MSI_MAP_EQNUM_MASK ; 
 int FO_PCI_MSI_MAP_EQNUM_SHFT ; 
 int FO_PCI_MSI_MAP_V ; 
 int INTCLR_IDLE ; 
 scalar_t__ FUNC2 (size_t) ; 
 size_t FUNC3 (scalar_t__,scalar_t__) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct resource*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*,void**) ; 
 struct fire_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  fire_ic ; 
 int /*<<< orphan*/  fire_msiq_filter ; 
 int /*<<< orphan*/  fire_msiq_handler ; 
 int /*<<< orphan*/  fire_msiqc_filter ; 
 TYPE_2__* intr_vectors ; 
 scalar_t__ FUNC7 (struct resource*) ; 
 void* FUNC8 (struct resource*) ; 
 int /*<<< orphan*/  FUNC9 (struct resource*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct resource*,int) ; 

__attribute__((used)) static int
FUNC11(device_t dev, device_t child, struct resource *ires,
    int flags, driver_filter_t *filt, driver_intr_t *intr, void *arg,
    void **cookiep)
{
	struct fire_softc *sc;
	struct fire_msiqarg *fmqa;
	u_long vec;
	int error;
	u_int msi, msiq;

	sc = FUNC5(dev);
	/*
	 * XXX this assumes that a device only has one INTx, while in fact
	 * Cassini+ and Saturn can use all four the firmware has assigned
	 * to them, but so does pci(4).
	 */
	if (FUNC7(ires) != 0) {
		msi = FUNC8(ires);
		msiq = sc->sc_msi_msiq_table[msi - sc->sc_msi_first];
		vec = FUNC3(sc->sc_ign, sc->sc_msiq_ino_first + msiq);
		msiq += sc->sc_msiq_first;
		if (intr_vectors[vec].iv_ic != &fire_ic) {
			FUNC6(dev,
			    "invalid interrupt controller for vector 0x%lx\n",
			    vec);
			return (EINVAL);
		}
		/*
		 * The MD interrupt code needs the vector rather than the MSI.
		 */
		FUNC10(ires, vec);
		FUNC9(ires, vec);
		error = FUNC4(dev, child, ires, flags, filt,
		    intr, arg, cookiep);
		FUNC10(ires, msi);
		FUNC9(ires, msi);
		if (error != 0)
			return (error);
		fmqa = intr_vectors[vec].iv_icarg;
		/*
		 * XXX inject our event queue handler.
		 */
		if (filt != NULL) {
			intr_vectors[vec].iv_func = fire_msiq_filter;
			intr_vectors[vec].iv_ic = &fire_msiqc_filter;
			/*
			 * Ensure the event queue interrupt is cleared, it
			 * might have triggered before.  Given we supply NULL
			 * as ic_clear, inthand_add() won't do this for us.
			 */
			FUNC1(sc, fmqa->fmqa_fica.fica_clr,
			    INTCLR_IDLE);
		} else
			intr_vectors[vec].iv_func = fire_msiq_handler;
		/* Record the MSI/MSI-X as long as we we use a 1:1 mapping. */
		fmqa->fmqa_msi = msi;
		FUNC1(sc, FO_PCI_EQ_CTRL_SET_BASE + (msiq << 3),
		    FO_PCI_EQ_CTRL_SET_EN);
		msi <<= 3;
		FUNC1(sc, FO_PCI_MSI_MAP_BASE + msi,
		    (FUNC0(sc, FO_PCI_MSI_MAP_BASE + msi) &
		    ~FO_PCI_MSI_MAP_EQNUM_MASK) |
		    ((msiq << FO_PCI_MSI_MAP_EQNUM_SHFT) &
		    FO_PCI_MSI_MAP_EQNUM_MASK));
		FUNC1(sc, FO_PCI_MSI_CLR_BASE + msi,
		    FO_PCI_MSI_CLR_EQWR_N);
		FUNC1(sc, FO_PCI_MSI_MAP_BASE + msi,
		    FUNC0(sc, FO_PCI_MSI_MAP_BASE + msi) |
		    FO_PCI_MSI_MAP_V);
		return (error);
	}

	/*
	 * Make sure the vector is fully specified and we registered
	 * our interrupt controller for it.
	 */
	vec = FUNC8(ires);
	if (FUNC2(vec) != sc->sc_ign) {
		FUNC6(dev, "invalid interrupt vector 0x%lx\n", vec);
		return (EINVAL);
	}
	if (intr_vectors[vec].iv_ic != &fire_ic) {
		FUNC6(dev,
		    "invalid interrupt controller for vector 0x%lx\n", vec);
		return (EINVAL);
	}
	return (FUNC4(dev, child, ires, flags, filt, intr,
	    arg, cookiep));
}