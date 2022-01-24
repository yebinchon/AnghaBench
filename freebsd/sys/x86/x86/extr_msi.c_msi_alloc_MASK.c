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
typedef  void* u_int ;
struct TYPE_2__ {scalar_t__ is_handlers; } ;
struct msi_intsrc {int msi_cpu; int msi_vector; int msi_irq; int msi_count; int msi_maxcount; void** msi_irqs; TYPE_1__ msi_intsrc; struct msi_intsrc* msi_first; int /*<<< orphan*/ * msi_dev; void* msi_remap_cookie; } ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int ENOSPC ; 
 int ENXIO ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  M_MSI ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int FUNC1 (void*,int*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (void*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int*,void**,int) ; 
 scalar_t__ bootverbose ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,void**) ; 
 int first_msi_irq ; 
 int /*<<< orphan*/  FUNC5 (void**,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int) ; 
 void* FUNC7 (void*) ; 
 int FUNC8 (int /*<<< orphan*/ *,void**,int) ; 
 void** FUNC9 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  msi_enabled ; 
 int /*<<< orphan*/  msi_lock ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int num_msi_irqs ; 
 int /*<<< orphan*/  FUNC13 (char*,int,int,int) ; 

int
FUNC14(device_t dev, int count, int maxcount, int *irqs)
{
	struct msi_intsrc *msi, *fsrc;
	u_int cpu, domain, *mirqs;
	int cnt, i, vector;
#ifdef ACPI_DMAR
	u_int cookies[count];
	int error;
#endif

	if (!msi_enabled)
		return (ENXIO);

	if (FUNC4(dev, &domain) != 0)
		domain = 0;

	if (count > 1)
		mirqs = FUNC9(count * sizeof(*mirqs), M_MSI, M_WAITOK);
	else
		mirqs = NULL;
again:
	FUNC11(&msi_lock);

	/* Try to find 'count' free IRQs. */
	cnt = 0;
	for (i = first_msi_irq; i < first_msi_irq + num_msi_irqs; i++) {
		msi = (struct msi_intsrc *)FUNC6(i);

		/* End of allocated sources, so break. */
		if (msi == NULL)
			break;

		/* If this is a free one, save its IRQ in the array. */
		if (msi->msi_dev == NULL) {
			irqs[cnt] = i;
			cnt++;
			if (cnt == count)
				break;
		}
	}

	/* Do we need to create some new sources? */
	if (cnt < count) {
		/* If we would exceed the max, give up. */
		if (i + (count - cnt) > first_msi_irq + num_msi_irqs) {
			FUNC12(&msi_lock);
			FUNC5(mirqs, M_MSI);
			return (ENXIO);
		}
		FUNC12(&msi_lock);

		/* We need count - cnt more sources. */
		while (cnt < count) {
			FUNC10();
			cnt++;
		}
		goto again;
	}

	/* Ok, we now have the IRQs allocated. */
	FUNC0(cnt == count, ("count mismatch"));

	/* Allocate 'count' IDT vectors. */
	cpu = FUNC7(domain);
	vector = FUNC1(cpu, irqs, count, maxcount);
	if (vector == 0) {
		FUNC12(&msi_lock);
		FUNC5(mirqs, M_MSI);
		return (ENOSPC);
	}

#ifdef ACPI_DMAR
	mtx_unlock(&msi_lock);
	error = iommu_alloc_msi_intr(dev, cookies, count);
	mtx_lock(&msi_lock);
	if (error == EOPNOTSUPP)
		error = 0;
	if (error != 0) {
		for (i = 0; i < count; i++)
			apic_free_vector(cpu, vector + i, irqs[i]);
		free(mirqs, M_MSI);
		return (error);
	}
	for (i = 0; i < count; i++) {
		msi = (struct msi_intsrc *)intr_lookup_source(irqs[i]);
		msi->msi_remap_cookie = cookies[i];
	}
#endif

	/* Assign IDT vectors and make these messages owned by 'dev'. */
	fsrc = (struct msi_intsrc *)FUNC6(irqs[0]);
	for (i = 0; i < count; i++) {
		msi = (struct msi_intsrc *)FUNC6(irqs[i]);
		msi->msi_cpu = cpu;
		msi->msi_dev = dev;
		msi->msi_vector = vector + i;
		if (bootverbose)
			FUNC13(
		    "msi: routing MSI IRQ %d to local APIC %u vector %u\n",
			    msi->msi_irq, msi->msi_cpu, msi->msi_vector);
		msi->msi_first = fsrc;
		FUNC0(msi->msi_intsrc.is_handlers == 0,
		    ("dead MSI has handlers"));
	}
	fsrc->msi_count = count;
	fsrc->msi_maxcount = maxcount;
	if (count > 1)
		FUNC3(irqs, mirqs, count * sizeof(*mirqs));
	fsrc->msi_irqs = mirqs;
	FUNC12(&msi_lock);
	return (0);
}