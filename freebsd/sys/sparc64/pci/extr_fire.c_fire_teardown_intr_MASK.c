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
typedef  size_t u_long ;
typedef  int u_int ;
struct resource {int dummy; } ;
struct fire_softc {int* sc_msi_msiq_table; size_t sc_msi_first; scalar_t__ sc_msiq_first; scalar_t__ sc_msiq_ino_first; int /*<<< orphan*/  sc_ign; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int /*<<< orphan*/ * iv_ic; } ;

/* Variables and functions */
 int FUNC0 (struct fire_softc*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct fire_softc*,scalar_t__,int) ; 
 scalar_t__ FO_PCI_EQ_CTRL_CLR_BASE ; 
 int FO_PCI_EQ_CTRL_CLR_COVERR ; 
 int FO_PCI_EQ_CTRL_CLR_DIS ; 
 int FO_PCI_EQ_CTRL_CLR_E2I ; 
 scalar_t__ FO_PCI_EQ_HD_BASE ; 
 int FO_PCI_EQ_HD_MASK ; 
 int FO_PCI_EQ_HD_SHFT ; 
 scalar_t__ FO_PCI_EQ_TL_BASE ; 
 int FO_PCI_EQ_TL_MASK ; 
 int FO_PCI_EQ_TL_SHFT ; 
 scalar_t__ FO_PCI_MSI_MAP_BASE ; 
 int FO_PCI_MSI_MAP_V ; 
 size_t FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct resource*,void*) ; 
 struct fire_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fire_ic ; 
 TYPE_1__* intr_vectors ; 
 scalar_t__ FUNC5 (struct resource*) ; 
 int FUNC6 (struct resource*) ; 
 int /*<<< orphan*/  FUNC7 (struct resource*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct resource*,int) ; 

__attribute__((used)) static int
FUNC9(device_t dev, device_t child, struct resource *ires,
    void *cookie)
{
	struct fire_softc *sc;
	u_long vec;
	int error;
	u_int msi, msiq;

	sc = FUNC4(dev);
	if (FUNC5(ires) != 0) {
		msi = FUNC6(ires);
		msiq = sc->sc_msi_msiq_table[msi - sc->sc_msi_first];
		vec = FUNC2(sc->sc_ign, msiq + sc->sc_msiq_ino_first);
		msiq += sc->sc_msiq_first;
		msi <<= 3;
		FUNC1(sc, FO_PCI_MSI_MAP_BASE + msi,
		    FUNC0(sc, FO_PCI_MSI_MAP_BASE + msi) &
		    ~FO_PCI_MSI_MAP_V);
		msiq <<= 3;
		FUNC1(sc, FO_PCI_EQ_CTRL_CLR_BASE + msiq,
		    FO_PCI_EQ_CTRL_CLR_COVERR | FO_PCI_EQ_CTRL_CLR_E2I |
		    FO_PCI_EQ_CTRL_CLR_DIS);
		FUNC1(sc, FO_PCI_EQ_TL_BASE + msiq,
		    (0 << FO_PCI_EQ_TL_SHFT) & FO_PCI_EQ_TL_MASK);
		FUNC1(sc, FO_PCI_EQ_HD_BASE + msiq,
		    (0 << FO_PCI_EQ_HD_SHFT) & FO_PCI_EQ_HD_MASK);
		intr_vectors[vec].iv_ic = &fire_ic;
		/*
		 * The MD interrupt code needs the vector rather than the MSI.
		 */
		FUNC8(ires, vec);
		FUNC7(ires, vec);
		error = FUNC3(dev, child, ires, cookie);
		msi >>= 3;
		FUNC8(ires, msi);
		FUNC7(ires, msi);
		return (error);
	}
	return (FUNC3(dev, child, ires, cookie));
}