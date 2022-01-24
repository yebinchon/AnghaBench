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
typedef  scalar_t__ u_int ;
struct resource_list_entry {scalar_t__ start; } ;
struct TYPE_5__ {int msix_alloc; int msix_table_len; struct msix_table_entry* msix_table; struct msix_vector* msix_vectors; } ;
struct TYPE_4__ {int msi_alloc; scalar_t__ msi_handlers; void* msi_data; void* msi_addr; } ;
struct TYPE_6__ {TYPE_2__ msix; TYPE_1__ msi; } ;
struct pci_devinfo {TYPE_3__ cfg; int /*<<< orphan*/  resources; } ;
struct msix_vector {scalar_t__ mv_irq; void* mv_data; void* mv_address; } ;
struct msix_table_entry {int mte_vector; scalar_t__ mte_handlers; } ;
typedef  TYPE_3__ pcicfgregs ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENOENT ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,void**,void**) ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 struct pci_devinfo* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,void*,void*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,void*,void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 struct resource_list_entry* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC9(device_t bus, device_t dev, u_int irq)
{
	struct pci_devinfo *dinfo = FUNC1(dev);
	pcicfgregs *cfg = &dinfo->cfg;
	struct resource_list_entry *rle;
	struct msix_table_entry *mte;
	struct msix_vector *mv;
	uint64_t addr;
	uint32_t data;
	int error, i, j;

	/*
	 * Handle MSI first.  We try to find this IRQ among our list
	 * of MSI IRQs.  If we find it, we request updated address and
	 * data registers and apply the results.
	 */
	if (cfg->msi.msi_alloc > 0) {

		/* If we don't have any active handlers, nothing to do. */
		if (cfg->msi.msi_handlers == 0)
			return (0);
		for (i = 0; i < cfg->msi.msi_alloc; i++) {
			rle = FUNC8(&dinfo->resources, SYS_RES_IRQ,
			    i + 1);
			if (rle->start == irq) {
				error = FUNC0(FUNC2(bus),
				    dev, irq, &addr, &data);
				if (error)
					return (error);
				FUNC3(dev);
				dinfo->cfg.msi.msi_addr = addr;
				dinfo->cfg.msi.msi_data = data;
				FUNC4(dev, addr, data);
				return (0);
			}
		}
		return (ENOENT);
	}

	/*
	 * For MSI-X, we check to see if we have this IRQ.  If we do,
	 * we request the updated mapping info.  If that works, we go
	 * through all the slots that use this IRQ and update them.
	 */
	if (cfg->msix.msix_alloc > 0) {
		for (i = 0; i < cfg->msix.msix_alloc; i++) {
			mv = &cfg->msix.msix_vectors[i];
			if (mv->mv_irq == irq) {
				error = FUNC0(FUNC2(bus),
				    dev, irq, &addr, &data);
				if (error)
					return (error);
				mv->mv_address = addr;
				mv->mv_data = data;
				for (j = 0; j < cfg->msix.msix_table_len; j++) {
					mte = &cfg->msix.msix_table[j];
					if (mte->mte_vector != i + 1)
						continue;
					if (mte->mte_handlers == 0)
						continue;
					FUNC6(dev, j);
					FUNC5(dev, j, addr, data);
					FUNC7(dev, j);
				}
			}
		}
		return (ENOENT);
	}

	return (ENOENT);
}