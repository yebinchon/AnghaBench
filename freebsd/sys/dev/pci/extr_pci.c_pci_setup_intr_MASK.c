#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  void* uint64_t ;
typedef  void* uint32_t ;
struct resource {int dummy; } ;
struct TYPE_5__ {scalar_t__ msix_alloc; int msix_table_len; struct msix_vector* msix_vectors; struct msix_table_entry* msix_table; } ;
struct TYPE_4__ {scalar_t__ msi_alloc; scalar_t__ msi_addr; scalar_t__ msi_handlers; void* msi_data; } ;
struct TYPE_6__ {TYPE_2__ msix; TYPE_1__ msi; } ;
struct pci_devinfo {TYPE_3__ cfg; } ;
struct msix_vector {scalar_t__ mv_irq; scalar_t__ mv_address; void* mv_data; } ;
struct msix_table_entry {int mte_vector; int mte_handlers; } ;
typedef  int /*<<< orphan*/  driver_intr_t ;
typedef  int /*<<< orphan*/  driver_filter_t ;
typedef  scalar_t__ device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 (scalar_t__,scalar_t__,scalar_t__,void**,void**) ; 
 int /*<<< orphan*/  PCIM_CMD_INTxDIS ; 
 int /*<<< orphan*/  PCI_QUIRK_MSI_INTX_BUG ; 
 int FUNC2 (scalar_t__,scalar_t__,struct resource*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*,void**) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__,struct resource*,void*) ; 
 struct pci_devinfo* FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,scalar_t__,void*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int,scalar_t__,void*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,int) ; 
 int FUNC13 (struct resource*) ; 
 scalar_t__ FUNC14 (struct resource*) ; 

int
FUNC15(device_t dev, device_t child, struct resource *irq, int flags,
    driver_filter_t *filter, driver_intr_t *intr, void *arg, void **cookiep)
{
	struct pci_devinfo *dinfo;
	struct msix_table_entry *mte;
	struct msix_vector *mv;
	uint64_t addr;
	uint32_t data;
	void *cookie;
	int error, rid;

	error = FUNC2(dev, child, irq, flags, filter, intr,
	    arg, &cookie);
	if (error)
		return (error);

	/* If this is not a direct child, just bail out. */
	if (FUNC5(child) != dev) {
		*cookiep = cookie;
		return(0);
	}

	rid = FUNC13(irq);
	if (rid == 0) {
		/* Make sure that INTx is enabled */
		FUNC6(dev, child, PCIM_CMD_INTxDIS);
	} else {
		/*
		 * Check to see if the interrupt is MSI or MSI-X.
		 * Ask our parent to map the MSI and give
		 * us the address and data register values.
		 * If we fail for some reason, teardown the
		 * interrupt handler.
		 */
		dinfo = FUNC4(child);
		if (dinfo->cfg.msi.msi_alloc > 0) {
			if (dinfo->cfg.msi.msi_addr == 0) {
				FUNC0(dinfo->cfg.msi.msi_handlers == 0,
			    ("MSI has handlers, but vectors not mapped"));
				error = FUNC1(FUNC5(dev),
				    child, FUNC14(irq), &addr, &data);
				if (error)
					goto bad;
				dinfo->cfg.msi.msi_addr = addr;
				dinfo->cfg.msi.msi_data = data;
			}
			if (dinfo->cfg.msi.msi_handlers == 0)
				FUNC7(child, dinfo->cfg.msi.msi_addr,
				    dinfo->cfg.msi.msi_data);
			dinfo->cfg.msi.msi_handlers++;
		} else {
			FUNC0(dinfo->cfg.msix.msix_alloc > 0,
			    ("No MSI or MSI-X interrupts allocated"));
			FUNC0(rid <= dinfo->cfg.msix.msix_table_len,
			    ("MSI-X index too high"));
			mte = &dinfo->cfg.msix.msix_table[rid - 1];
			FUNC0(mte->mte_vector != 0, ("no message vector"));
			mv = &dinfo->cfg.msix.msix_vectors[mte->mte_vector - 1];
			FUNC0(mv->mv_irq == FUNC14(irq),
			    ("IRQ mismatch"));
			if (mv->mv_address == 0) {
				FUNC0(mte->mte_handlers == 0,
		    ("MSI-X table entry has handlers, but vector not mapped"));
				error = FUNC1(FUNC5(dev),
				    child, FUNC14(irq), &addr, &data);
				if (error)
					goto bad;
				mv->mv_address = addr;
				mv->mv_data = data;
			}

			/*
			 * The MSIX table entry must be made valid by
			 * incrementing the mte_handlers before
			 * calling pci_enable_msix() and
			 * pci_resume_msix(). Else the MSIX rewrite
			 * table quirk will not work as expected.
			 */
			mte->mte_handlers++;
			if (mte->mte_handlers == 1) {
				FUNC8(child, rid - 1, mv->mv_address,
				    mv->mv_data);
				FUNC12(child, rid - 1);
			}
		}

		/*
		 * Make sure that INTx is disabled if we are using MSI/MSI-X,
		 * unless the device is affected by PCI_QUIRK_MSI_INTX_BUG,
		 * in which case we "enable" INTx so MSI/MSI-X actually works.
		 */
		if (!FUNC10(FUNC9(child),
		    PCI_QUIRK_MSI_INTX_BUG))
			FUNC11(dev, child, PCIM_CMD_INTxDIS);
		else
			FUNC6(dev, child, PCIM_CMD_INTxDIS);
	bad:
		if (error) {
			(void)FUNC3(dev, child, irq,
			    cookie);
			return (error);
		}
	}
	*cookiep = cookie;
	return (0);
}