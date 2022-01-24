#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct msi_intsrc {int msi_count; int /*<<< orphan*/ * msi_irqs; scalar_t__ msi_maxcount; scalar_t__ msi_vector; int /*<<< orphan*/  msi_irq; int /*<<< orphan*/  msi_cpu; int /*<<< orphan*/ * msi_dev; struct msi_intsrc* msi_first; int /*<<< orphan*/  msi_remap_cookie; scalar_t__ msi_msix; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  M_MSI ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  msi_lock ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int
FUNC7(int *irqs, int count)
{
	struct msi_intsrc *msi, *first;
	int i;

	FUNC5(&msi_lock);
	first = (struct msi_intsrc *)FUNC3(irqs[0]);
	if (first == NULL) {
		FUNC6(&msi_lock);
		return (ENOENT);
	}

	/* Make sure this isn't an MSI-X message. */
	if (first->msi_msix) {
		FUNC6(&msi_lock);
		return (EINVAL);
	}

	/* Make sure this message is allocated to a group. */
	if (first->msi_first == NULL) {
		FUNC6(&msi_lock);
		return (ENXIO);
	}

	/*
	 * Make sure this is the start of a group and that we are releasing
	 * the entire group.
	 */
	if (first->msi_first != first || first->msi_count != count) {
		FUNC6(&msi_lock);
		return (EINVAL);
	}
	FUNC0(first->msi_dev != NULL, ("unowned group"));

	/* Clear all the extra messages in the group. */
	for (i = 1; i < count; i++) {
		msi = (struct msi_intsrc *)FUNC3(irqs[i]);
		FUNC0(msi->msi_first == first, ("message not in group"));
		FUNC0(msi->msi_dev == first->msi_dev, ("owner mismatch"));
#ifdef ACPI_DMAR
		iommu_unmap_msi_intr(first->msi_dev, msi->msi_remap_cookie);
#endif
		msi->msi_first = NULL;
		msi->msi_dev = NULL;
		FUNC1(msi->msi_cpu, msi->msi_vector, msi->msi_irq);
		msi->msi_vector = 0;
	}

	/* Clear out the first message. */
#ifdef ACPI_DMAR
	mtx_unlock(&msi_lock);
	iommu_unmap_msi_intr(first->msi_dev, first->msi_remap_cookie);
	mtx_lock(&msi_lock);
#endif
	first->msi_first = NULL;
	first->msi_dev = NULL;
	FUNC1(first->msi_cpu, first->msi_vector, first->msi_irq);
	first->msi_vector = 0;
	first->msi_count = 0;
	first->msi_maxcount = 0;
	FUNC2(first->msi_irqs, M_MSI);
	first->msi_irqs = NULL;

	FUNC6(&msi_lock);
	return (0);
}