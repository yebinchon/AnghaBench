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
typedef  int uint64_t ;
typedef  int uint32_t ;
typedef  int u_int ;
struct TYPE_2__ {int /*<<< orphan*/  sc_pci_secbus; } ;
struct schizo_softc {int sc_flags; int /*<<< orphan*/  sc_dev; int /*<<< orphan*/  sc_mtx; TYPE_1__ sc_ops; scalar_t__ sc_half; int /*<<< orphan*/  sc_stats_pci_non_fatal; } ;

/* Variables and functions */
 int FILTER_HANDLED ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int PCIM_STATUS_MDPERR ; 
 int PCIM_STATUS_PERR ; 
 int PCIM_STATUS_RMABORT ; 
 int PCIM_STATUS_RTABORT ; 
 int PCIM_STATUS_SERR ; 
 int PCIM_STATUS_STABORT ; 
 int /*<<< orphan*/  PCIR_STATUS ; 
 int SCHIZO_FLAGS_XMODE ; 
 int FUNC2 (struct schizo_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct schizo_softc*,int /*<<< orphan*/ ,int) ; 
 int SCZ_PCI_CTRL_BUS_UNUS ; 
 int SCZ_PCI_CTRL_SBH_ERR ; 
 int /*<<< orphan*/  STX_CS_DEVICE ; 
 int /*<<< orphan*/  STX_CS_FUNC ; 
 int /*<<< orphan*/  STX_PCI_AFAR ; 
 int /*<<< orphan*/  STX_PCI_AFSR ; 
 int STX_PCI_AFSR_P_MA ; 
 int STX_PCI_AFSR_P_PERR ; 
 int STX_PCI_AFSR_P_RTRY ; 
 int STX_PCI_AFSR_P_TA ; 
 int STX_PCI_AFSR_P_TTO ; 
 int STX_PCI_AFSR_P_UNUS ; 
 int /*<<< orphan*/  STX_PCI_CTRL ; 
 int STX_PCI_CTRL_MMU_ERR ; 
 int STX_PCI_CTRL_RTRY_ERR ; 
 int STX_PCI_CTRL_SERR ; 
 int STX_PCI_CTRL_TTO_ERR ; 
 int /*<<< orphan*/  STX_PCI_IOMMU ; 
 int TOM_PCI_CTRL_DTO_ERR ; 
 int TOM_PCI_IOMMU_ERR ; 
 int TOM_PCI_IOMMU_ERRMASK ; 
 int TOM_PCI_IOMMU_ERR_BAD_VA ; 
 int TOM_PCI_IOMMU_ERR_ILLTSBTBW ; 
 int TOM_PCI_IOMMU_INVALID_ERR ; 
 int /*<<< orphan*/  XMS_PCI_X_ERR_STAT ; 
 int XMS_PCI_X_ERR_STAT_PERR_RCV ; 
 int XMS_PCI_X_ERR_STAT_P_CDSTAT ; 
 int XMS_PCI_X_ERR_STAT_P_CMMU ; 
 int XMS_PCI_X_ERR_STAT_P_SC_DSCRD ; 
 int XMS_PCI_X_ERR_STAT_P_SC_TTO ; 
 int XMS_PCI_X_ERR_STAT_P_SDSTAT ; 
 int XMS_PCI_X_ERR_STAT_P_SMMU ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,scalar_t__,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(void *arg)
{
	struct schizo_softc *sc = arg;
	uint64_t afar, afsr, csr, iommu, xstat;
	uint32_t status;
	u_int fatal;

	fatal = 0;

	FUNC6(sc->sc_mtx);

	afar = FUNC2(sc, STX_PCI_AFAR);
	afsr = FUNC2(sc, STX_PCI_AFSR);
	csr = FUNC2(sc, STX_PCI_CTRL);
	iommu = FUNC2(sc, STX_PCI_IOMMU);
	if ((sc->sc_flags & SCHIZO_FLAGS_XMODE) != 0)
		xstat = FUNC2(sc, XMS_PCI_X_ERR_STAT);
	else
		xstat = 0;
	status = FUNC0(sc->sc_dev, sc->sc_ops.sc_pci_secbus,
	    STX_CS_DEVICE, STX_CS_FUNC, PCIR_STATUS, 2);

	/*
	 * IOMMU errors are only fatal on Tomatillo and there also only if
	 * target abort was not signaled.
	 */
	if ((csr & STX_PCI_CTRL_MMU_ERR) != 0 &&
	    (iommu & TOM_PCI_IOMMU_ERR) != 0 &&
	    ((status & PCIM_STATUS_STABORT) == 0 ||
	    ((iommu & TOM_PCI_IOMMU_ERRMASK) != TOM_PCI_IOMMU_INVALID_ERR &&
	    (iommu & TOM_PCI_IOMMU_ERR_ILLTSBTBW) == 0 &&
	    (iommu & TOM_PCI_IOMMU_ERR_BAD_VA) == 0)))
		fatal = 1;
	else if ((status & PCIM_STATUS_STABORT) != 0)
		fatal = 1;
	if ((status & (PCIM_STATUS_PERR | PCIM_STATUS_SERR |
	    PCIM_STATUS_RMABORT | PCIM_STATUS_RTABORT |
	    PCIM_STATUS_MDPERR)) != 0 ||
	    (csr & (SCZ_PCI_CTRL_BUS_UNUS | TOM_PCI_CTRL_DTO_ERR |
	    STX_PCI_CTRL_TTO_ERR | STX_PCI_CTRL_RTRY_ERR |
	    SCZ_PCI_CTRL_SBH_ERR | STX_PCI_CTRL_SERR)) != 0 ||
	    (afsr & (STX_PCI_AFSR_P_MA | STX_PCI_AFSR_P_TA |
	    STX_PCI_AFSR_P_RTRY | STX_PCI_AFSR_P_PERR | STX_PCI_AFSR_P_TTO |
	    STX_PCI_AFSR_P_UNUS)) != 0)
		fatal = 1;
	if (xstat & (XMS_PCI_X_ERR_STAT_P_SC_DSCRD |
	    XMS_PCI_X_ERR_STAT_P_SC_TTO | XMS_PCI_X_ERR_STAT_P_SDSTAT |
	    XMS_PCI_X_ERR_STAT_P_SMMU | XMS_PCI_X_ERR_STAT_P_CDSTAT |
	    XMS_PCI_X_ERR_STAT_P_CMMU | XMS_PCI_X_ERR_STAT_PERR_RCV))
		fatal = 1;
	if (fatal == 0)
		sc->sc_stats_pci_non_fatal++;

	FUNC5(sc->sc_dev, "PCI bus %c error AFAR %#llx AFSR %#llx "
	    "PCI CSR %#llx IOMMU %#llx PCI-X %#llx STATUS %#x\n",
	    'A' + sc->sc_half, (unsigned long long)afar,
	    (unsigned long long)afsr, (unsigned long long)csr,
	    (unsigned long long)iommu, (unsigned long long)xstat, status);

	/* Clear the error bits that we caught. */
	FUNC1(sc->sc_dev, sc->sc_ops.sc_pci_secbus, STX_CS_DEVICE,
	    STX_CS_FUNC, PCIR_STATUS, status, 2);
	FUNC3(sc, STX_PCI_CTRL, csr);
	FUNC3(sc, STX_PCI_AFSR, afsr);
	FUNC3(sc, STX_PCI_IOMMU, iommu);
	if ((sc->sc_flags & SCHIZO_FLAGS_XMODE) != 0)
		FUNC3(sc, XMS_PCI_X_ERR_STAT, xstat);

	FUNC7(sc->sc_mtx);

	if (fatal != 0)
		FUNC8("%s: fatal PCI bus error",
		    FUNC4(sc->sc_dev));
	return (FILTER_HANDLED);
}